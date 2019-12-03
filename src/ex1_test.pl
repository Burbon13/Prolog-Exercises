/* ============== Tests ex1 ============== */
/* To run the tests copy all of the code below this line and run it. */
/* If the result is True, yay, all tests passed. */

/* bit_ops_result */
/* OR */
bit_ops_result([sig(t1,1), sig(t2,0)], or, [t1,t2], Res1),
Res1 =:= 1,
bit_ops_result([sig(t1,1), sig(t2,1)], or, [t1,t2], Res2),
Res2 =:= 1,
bit_ops_result([sig(t1,0), sig(t2,1)], or, [t1,t2], Res3),
Res3 =:= 1,
bit_ops_result([sig(t1,0), sig(t2,0)], or, [t1,t2], Res4),
Res4 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,0), sig(t3,0), sig(t20,0)], or, [t1,t2,t3,t20], Res5),
Res5 =:= 0,
bit_ops_result([sig(t1,1), sig(t2,0), sig(t3,0), sig(t20,0)], or, [t1,t2,t3,t20], Res6),
Res6 =:= 1,
bit_ops_result([sig(t1,1), sig(t2,0), sig(t3,1), sig(t20,0)], or, [t1,t2,t3,t20], Res7),
Res7 =:= 1,
bit_ops_result([sig(t1,0), sig(t2,0), sig(t3,0), sig(t20,1)], or, [t1,t2,t3,t20], Res8),
Res8 =:= 1,
/* AND */
bit_ops_result([sig(t1,1), sig(t2,0)], and, [t1,t2], R1),
R1 =:= 0,
bit_ops_result([sig(t1,1), sig(t2,1)], and, [t1,t2], R2),
R2 =:= 1,
bit_ops_result([sig(t1,0), sig(t2,1)], and, [t1,t2], R3),
R3 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,0)], and, [t1,t2], R4),
R4 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,0), sig(t3,0), sig(t20,0)], and, [t1,t2,t3,t20], R5),
R5 =:= 0,
bit_ops_result([sig(t1,1), sig(t2,1), sig(t3,1), sig(t20,1)], and, [t1,t2,t3,t20], R6),
R6 =:= 1,
bit_ops_result([sig(t1,1), sig(t2,0), sig(t3,1), sig(t20,0)], and, [t1,t2,t3,t20], R7),
R7 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,0), sig(t3,0), sig(t20,1)], and, [t1,t2,t3,t20], R8),
R8 =:= 0,
/* NOR */
bit_ops_result([sig(t1,1), sig(t2,0)], nor, [t1,t2], Rnes1),
Rnes1 =:= 0,
bit_ops_result([sig(t1,1), sig(t2,1)], nor, [t1,t2], Rnes2),
Rnes2 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,1)], nor, [t1,t2], Rnes3),
Rnes3 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,0)], nor, [t1,t2], Rnes4),
Rnes4 =:= 1,
bit_ops_result([sig(t1,0), sig(t2,0), sig(t3,0), sig(t20,0)], nor, [t1,t2,t3,t20], Rnes5),
Rnes5 =:= 1,
bit_ops_result([sig(t1,1), sig(t2,0), sig(t3,0), sig(t20,0)], nor, [t1,t2,t3,t20], Rnes6),
Rnes6 =:= 0,
bit_ops_result([sig(t1,1), sig(t2,0), sig(t3,1), sig(t20,0)], nor, [t1,t2,t3,t20], Rnes7),
Rnes7 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,0), sig(t3,0), sig(t20,1)], nor, [t1,t2,t3,t20], Rnes8),
Rnes8 =:= 0,
/* NAND */
bit_ops_result([sig(t1,1), sig(t2,0)], nand, [t1,t2], Ro1),
Ro1 =:= 1,
bit_ops_result([sig(t1,1), sig(t2,1)], nand, [t1,t2], Ro2),
Ro2 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,1)], nand, [t1,t2], Ro3),
Ro3 =:= 1,
bit_ops_result([sig(t1,0), sig(t2,0)], nand, [t1,t2], Ro4),
Ro4 =:= 1,
bit_ops_result([sig(t1,0), sig(t2,0), sig(t3,0), sig(t20,0)], nand, [t1,t2,t3,t20], Ro5),
Ro5 =:= 1,
bit_ops_result([sig(t1,1), sig(t2,1), sig(t3,1), sig(t20,1)], nand, [t1,t2,t3,t20], Ro6),
Ro6 =:= 0,
bit_ops_result([sig(t1,1), sig(t2,0), sig(t3,1), sig(t20,0)], nand, [t1,t2,t3,t20], Ro7),
Ro7 =:= 1,
bit_ops_result([sig(t1,0), sig(t2,0), sig(t3,0), sig(t20,1)], nand, [t1,t2,t3,t20], Ro8),
Ro8 =:= 1,
/* NOT */
bit_ops_result([sig(t1,1), sig(t2,0)], not, t1, V1),
V1 =:= 0,
bit_ops_result([sig(t1,1), sig(t2,0)], not, t2, V2),
V2 =:= 1,
/* XOR */
bit_ops_result([sig(t1,1), sig(t2,0)], xor, [t1,t2], Rxo1),
Rxo1 =:= 1,
bit_ops_result([sig(t1,1), sig(t2,1)], xor, [t1,t2], Rxo2),
Rxo2 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,1)], xor, [t1,t2], Rxo3),
Rxo3 =:= 1,
bit_ops_result([sig(t1,0), sig(t2,0)], xor, [t1,t2], Rxo4),
Rxo4 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,0), sig(t3,0), sig(t20,0)], xor, [t1,t2,t3,t20], Rxo5),
Rxo5 =:= 0,
bit_ops_result([sig(t1,1), sig(t2,1), sig(t3,1), sig(t20,1)], xor, [t1,t2,t3,t20], Rxo6),
Rxo6 =:= 0,
bit_ops_result([sig(t1,1), sig(t2,0), sig(t3,1), sig(t20,0)], xor, [t1,t2,t3,t20], Rxo7),
Rxo7 =:= 0,
bit_ops_result([sig(t1,0), sig(t2,0), sig(t3,0), sig(t20,1)], xor, [t1,t2,t3,t20], Rxo8),
Rxo8 =:= 1,

/* signal */
signal(
          o3,
          [gate(g1, and, [i1, i2], o1),
            gate(g2, xor, [o1, i3], o2),
            com("Gate to generate the sum bit"),
            gate(g3, xor, [o2, i4], o3),
            com("Gate to generate the sum bit")],
          [sig(i1,1),sig(i2,1),sig(i3,1)],
          1
          ),
signal(
          o3,
          [gate(g1, and, [i1, i2], o1),
          com("Gate to generate the sum bit"),
            gate(g2, xor, [o1, i3], o2),
            gate(g3, xor, [o2, i4], o3)],
          [sig(i1,1),sig(i2,0),sig(i3,1)],
          0
          ),

/* hav_value */
has_value([sig(o1, 0),sig(o2, 0),sig(o3, 1)], o1, 0),
has_value([sig(o1, 0),sig(o2, 0),sig(o3, 1)], o2, 0),
has_value([sig(o1, 0),sig(o2, 0),sig(o3, 1)], o3, 1),
not(has_value([sig(o1, 0),sig(o2, 0),sig(o3, 1)], o4, 1)),
not(has_value([sig(o1, 0),sig(o2, 0),sig(o3, 1)], o3, 0)),

/* signal_value_equals */
signal_value_equals(sig(o1, 0), o1, 0),
signal_value_equals(sig(o1, 1), o1, 1),
not(signal_value_equals(sig(o1, 0), o1, 1)),
not(signal_value_equals(sig(o1, 1), o1, 0)),
not(signal_value_equals(sig(o1, 1), o2, 1)),
not(signal_value_equals(sig(o2, 1), o1, 1)),

/* connections_list */
connections_list([gate(x1, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(x2, xor, [t1, i3], o1),
    gate(a1, and, [i1, i2], t2),
    gate(a4, not, i1, o5),
    gate(a2, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(o7, or, [t3, t2], o2)],
    [x1, x2, a1, a4, a2, o7]),
connections_list([gate(t0, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(t1, xor, [t1, i3], o1),
    gate(t2, and, [i1, i2], t2),
    gate(t3, not, i1, o5),
    gate(t4, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(t5, or, [t3, t2], o2)],
    [t0, t1, t2, t3, t4, t5]),
not(connections_list([gate(t0, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(t1, xor, [t1, i3], o1),
    gate(t2, and, [i1, i2], t2),
    gate(t3, not, i1, o5),
    gate(t4, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(t5, or, [t3, t2], o2)],
    [t0, t1, t2, t3, t4, t6])),
not(connections_list([gate(t0, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(t1, xor, [t1, i3], o1),
    gate(t2, and, [i1, i2], t2),
    gate(t3, not, i1, o5),
    gate(t4, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(t5, or, [t3, t2], o2)],
    [t0, t1, t2, t3, t4])),
not(connections_list([gate(t0, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(t1, xor, [t1, i3], o1),
    gate(t2, and, [i1, i2], t2),
    gate(t3, not, i1, o5),
    gate(t4, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(t5, or, [t3, t2], o2)],
    [t0, t1, t2, t3, t4, t5,t6])),


/* get_name */
get_name(gate(a1, and, [i1, i2], t2), a1),
get_name(gate(at1, and, [i1, i2], t2), at1),

/* remove_comments */
delete_comments([
    gate(x1, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(x2, xor, [t1, i3], o1),
    gate(a1, and, [i1, i2], t2),
    gate(a4, not, i1, o5),
    gate(a2, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(o1, or, [t3, t2], o2)
],
[
    gate(x1, xor, [i1, i2], t1),
    gate(x2, xor, [t1, i3], o1),
    gate(a1, and, [i1, i2], t2),
    gate(a4, not, i1, o5),
    gate(a2, and, [i3, t1], t3),
    gate(o1, or, [t3, t2], o2)
]
),
delete_comments(
[gate(x1, xor, [i1, i2], t1),
com("Gate to generate the sum bit"),
gate(x2, xor, [t1, i3], o1),
com("Gate to generate the sum bit"),
gate(a1, and, [i1, i2], t2),
com("Gate to generate the sum bit"),
gate(a2, and, [i3, t1], t3),
com("Gate to generate the transport bit"),
gate(o1, or, [t3, t2], o2),
com("Gate to generate the sum bit")],
[gate(x1, xor, [i1, i2], t1),
gate(x2, xor, [t1, i3], o1),
gate(a1, and, [i1, i2], t2),
gate(a2, and, [i3, t1], t3),
gate(o1, or, [t3, t2], o2)]
),
not(delete_comments(
[gate(x1, xor, [i1, i2], t1),
com("Gate to generate the sum bit"),
gate(x2, xor, [t1, i3], o1),
com("Gate to generate the sum bit"),
gate(a1, and, [i1, i2], t2),
com("Gate to generate the sum bit"),
gate(a2, and, [i3, t1], t3),
com("Gate to generate the transport bit"),
gate(o1, or, [t3, t2], o2),
com("Gate to generate the sum bit")],
[gate(x1, xor, [i1, i2], t1),
gate(x2, xor, [t1, i3], o1),
gate(a1, and, [i1, i2], t2),
gate(a2, and, [i3, t1], t3),
gate(o1, nor, [t3, t2], o2)]
)),
not(delete_comments(
[gate(x1, xor, [i1, i2], t1),
com("Gate to generate the sum bit"),
gate(x2, xor, [t1, i3], o1),
com("Gate to generate the sum bit"),
gate(a1, and, [i1, i2], t2),
com("Gate to generate the sum bit"),
gate(a2, and, [i3, t1], t3),
com("Gate to generate the transport bit"),
gate(o1, or, [t3, t2], o2),
com("Gate to generate the sum bit")],
[gate(x1, xor, [i1, i2], t1),
gate(x2, xor, [t1, i3], o1),
gate(a1, and, [i1, i2], t2),
gate(a1, and, [i1, i2], t2),
gate(a2, and, [i3, t1], t3),
gate(o1, or, [t3, t2], o2)]
)),
not(delete_comments(
[gate(x1, xor, [i1, i2], t1),
com("Gate to generate the sum bit"),
gate(x2, xor, [t1, i3], o1),
com("Gate to generate the sum bit"),
gate(a1, and, [i1, i2], t2),
com("Gate to generate the sum bit"),
gate(a2, and, [i3, t1], t3),
com("Gate to generate the transport bit"),
gate(o1, or, [t3, t2], o2),
com("Gate to generate the sum bit")],
[gate(x1, xor, [i1, i2], t1),
gate(x2, xor, [t1, i3], o1),
gate(a1, and, [i1, i2], t2),
gate(a1, and, [i1, i2], t2),
gate(a2, and, [i3, t1], t3),
gate(o1, or, [t3, t2], o2),
com("Gate to generate the sum bit")]
)),


/* circuit */
circuit([
    gate(x1, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(x2, xor, [t1, i3], o1),
    gate(a1, and, [i1, i2], t2),
    gate(a4, not, i1, o5),
    gate(a2, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(o1, or, [t3, t2], o2)
]),
circuit([
    gate(x1, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(x2, xor, [t1, i3], o1),
    com("Gate to generate the sum bit"),
    gate(a1, and, [i1, i2], t2),
    com("Gate to generate the sum bit"),
    gate(a2, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(o1, or, [t3, t2], o2),
    com("Gate to generate the sum bit")
]),
circuit([
    gate(x1, xor, [i1, i2], t1),
    gate(x2, xor, [t1, i3], o1),
    gate(a1, and, [i1, i2], t2),
    gate(a2, and, [i3, t1], t3),
    gate(o1, or, [t3, t2], o2)
]),
not(circuit([
    gate(x1, xor, [i1, i2], t1),
    gate(x2, xor, [t1, i3], o1),
    gate(a1, and, [i1, i2], t2),
    com("Gate to generate the transport bit"),
    com("Gate to generate the transport bit"),
    gate(a2, and, [i3, t1], t3),
    gate(o1, or, [t3, t2], o2)
])),
not(circuit([
    gate(x1, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(x2, xor, [t1, i3], o1),
    gate(a1, aand, [i1, i2], t2),
    gate(a2, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(o1, or, [t3, t2], o2)
])),
not(circuit([
    gate(x1, xor, [i1, i2], t1),
    com("Gate to generate the sum bit"),
    gate(x2, xor, [t1, i3], o1),
    gate(a1, aand, [i1, i2], t2),
    gate(a2, and, [i3, t1], t3),
    com("Gate to generate the transport bit"),
    gate(o1, or, [t3, t2], o2),
    gate(o1, not, [t3, t2], o2)
])),

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
