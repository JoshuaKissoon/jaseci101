walker talker {
    has utterance;

    state {
        std.out(here.message, here.prompts);

        utterance = std.input("> ");

        std.out(utterance);

        if(utterance == "quit"): disengage;

        take -[transition(intent == utterance)]-> node::state else {
            take here;
        }
    }
}