package eu.jobwave.lambda;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import eu.jobwave.lambda.model.MailContents;
import eu.jobwave.lambda.model.UploadedData;
import eu.jobwave.lambda.service.MailService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
public class MailLambdaHandler implements RequestHandler<UploadedData, Void> {

    private final MailService mailService;

    @Override
    public Void handleRequest(UploadedData uploadedData, Context context) {
        log.debug("Received request with data: {}", uploadedData);
        MailContents mailContents = MailContents.builder()
                .to(uploadedData.getEmail())
                .attachment(uploadedData.getCv())
                .subject(String.format("New application from: %s %s", uploadedData.getFirstName(), uploadedData.getLastName()))
                .build();

        mailService.sendEmail(mailContents);
        return null;
    }
}
