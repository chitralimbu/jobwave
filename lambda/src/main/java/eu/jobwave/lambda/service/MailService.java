package eu.jobwave.lambda.service;

import io.quarkus.mailer.Mailer;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MailService {

    private final Mailer mailer;

}
