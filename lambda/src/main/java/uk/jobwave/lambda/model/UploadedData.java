package uk.jobwave.lambda.model;

import lombok.Builder;
import lombok.Data;
import lombok.extern.jackson.Jacksonized;

@Data
@Jacksonized
@Builder(toBuilder = true)
public class UploadedData {
    private String firstName;
    private String lastName;
    private String email;
    private String phoneNumber;
    private String cv;
    private String details;
}
