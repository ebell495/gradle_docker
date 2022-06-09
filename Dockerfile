FROM openjdk:17-bullseye

RUN wget https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -P /tmp && unzip -d /opt/gradle /tmp/gradle-7.4.2-bin.zip && ln -s /opt/gradle/gradle-7.4.2 /opt/gradle/latest
ENV GRADLE_HOME=/opt/gradle/latest
ENV PATH=${GRADLE_HOME}/bin:${PATH}
