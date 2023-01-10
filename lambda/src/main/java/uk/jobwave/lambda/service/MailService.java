package uk.jobwave.lambda.service;

import uk.jobwave.lambda.model.MailContents;
import io.quarkus.mailer.Mailer;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import javax.enterprise.context.ApplicationScoped;

@Slf4j
@ApplicationScoped
@RequiredArgsConstructor
public class MailService {

    private final Mailer mailer;

    public void sendEmail(MailContents mailContents) {
        log.debug("Mail contents: {}", mailContents);
    }
}
