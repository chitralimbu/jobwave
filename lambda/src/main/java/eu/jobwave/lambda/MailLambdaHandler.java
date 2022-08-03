package eu.jobwave.lambda;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class MailLambdaHandler implements RequestHandler<Void, Void> {

    @Override
    public Void handleRequest(Void input, Context context) {
        return null;
    }
}
