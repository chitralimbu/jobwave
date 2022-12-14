package uk.jobwave.lambda.model;

import lombok.Builder;
import lombok.Data;
import lombok.extern.jackson.Jacksonized;

@Data
@Jacksonized
@Builder(toBuilder = true)
public class MailContents {

    private String to;
    private String attachment;
    private String subject;
}
