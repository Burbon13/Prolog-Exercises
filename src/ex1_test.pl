/* ============== Tests ex1 ============== */
/* To run the tests copy all of the code below this line and run it. */
/* If the result is True, yay, all tests passed. */

/* circuit */
circuit([
    gate(x1, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(x2, xor, [t1, i3], o1),
    gate(a1, and, [i1, i2], t2),
    gate(a2, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(O1, or, [t3, t2], o2)
]),

/* is_gate */
is_gate(gate(g1, or, [i1, i2, i3], o1)),
is_gate(gate(g1, and, [i1, i2, i3], o1)),
is_gate(gate(g1, xor, [i1, i2, i3], o1)),
is_gate(gate(g1, nor, [i1, i2, i3], o1)),
is_gate(gate(g1, nand, [i1, i2, i3], o1)),
is_gate(gate(g1, not, i1, o1)),
not(is_gate(gate(g1, or, i1, o1))),
not(is_gate(gate(g1, and, i1, o1))),
not(is_gate(gate(g1, xor, i1, o1))),
not(is_gate(gate(g1, nor, i1, o1))),
not(is_gate(gate(g1, nand, i1, o1))),
not(is_gate(gate(g1, not, [i1, i2, i3], o1))),
not(is_gate(gate(1, or, [i1, i2, i3], o1))),
not(is_gate(gate([g1,y2], and, [i1, i2, i3], o1))),
not(is_gate(gate("g1", xor, [i1, i2, i3], o1))),
not(is_gate(gate(g1, nor, [i1, i2, i3], 1))),
not(is_gate(gate(g1, nand, [i1, i2, i3], [i1,i2]))),
not(is_gate(gate([i1,t3], not, i1, o1))),

/* is_binary_operator */
is_binary_operator(or),
is_binary_operator(and),
is_binary_operator(xor),
is_binary_operator(nor),
is_binary_operator(nand),
not(is_binary_operator(3)),
not(is_binary_operator("4")),
not(is_binary_operator('4')),
not(is_binary_operator([or, and])),
not(is_binary_operator(t1)),

/* is_comment */
is_comment(com("Vreau sa merg acasa")),
not(is_comment(comm("Vreau sa merg acasa"))),
not(is_comment(com('Vreau sa merg acasa'))),
not(is_comment(com(["Vreau sa merg acasa","Nu"]))),
not(is_comment(com(t1))),
not(is_comment(com(1))),

/* lsit_of_atoms */
list_of_atoms([t1,t2,t3,t4]),
list_of_atoms([t1]),
not(list_of_atoms([t1,t2,3,t4,t5])),
not(list_of_atoms([t1,t2,3])),
not(list_of_atoms(t1))
