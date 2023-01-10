package uk.jobwave.lambda;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import uk.jobwave.lambda.model.MailContents;
import uk.jobwave.lambda.model.UploadedData;
import uk.jobwave.lambda.service.MailService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
public class MailLambdaHandler implements RequestHandler<Void, String> {

    private final MailService mailService;

    @Override
    public String handleRequest(Void uploadedData, Context context) {
        return "Hello world! from chitra!!!";
        /*log.debug("Received request with data: {}", uploadedData);
        MailContents mailContents = MailContents.builder()
                .to(uploadedData.getEmail())
                .attachment(uploadedData.getCv())
                .subject(String.format("New application from: %s %s", uploadedData.getFirstName(), uploadedData.getLastName()))
                .build();

        mailService.sendEmail(mailContents);
        return null;*/
    }
}
