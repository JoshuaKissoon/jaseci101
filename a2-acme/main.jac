import {*} with "./graph.jac";
import {*} with "./walkers.jac";

walker init {

    /* If we're on the root node */
    root {
        spawn here --> graph::main_graph;
        spawn --> walker::talker;
    }
}