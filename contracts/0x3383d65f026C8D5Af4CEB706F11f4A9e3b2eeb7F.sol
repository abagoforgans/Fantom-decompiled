contract main {




// =====================  Runtime code  =====================


#
#  - adventure(uint256 arg1)
#
mapping of uint256 sub_f17993d3;
mapping of uint256 sub_1e7ec3c0;
array of struct sub_d56d7eae;
mapping of uint256 sub_6986a36c;
mapping of uint256 sub_093fd97a;

function sub_093fd97a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_093fd97a[arg1]
}

function sub_1e7ec3c0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_1e7ec3c0[arg1]
}

function sub_6986a36c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_6986a36c[arg1]
}

function sub_d56d7eae(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg3 < sub_d56d7eae[arg1][arg2].field_0
    return sub_d56d7eae[arg1][arg2][arg3].field_0, 
           sub_d56d7eae[arg1][arg2][arg3].field_256,
           sub_d56d7eae[arg1][arg2][arg3].field_256,
           sub_d56d7eae[arg1][arg2][arg3].field_512,
           sub_d56d7eae[arg1][arg2][arg3].field_768,
           sub_d56d7eae[arg1][arg2][arg3].field_1024
}

function sub_f17993d3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f17993d3[arg1]
}

function _fallback() payable {
    revert
}

function ability_modifier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 10:
        return (arg1 - 10 / 2)
    if 11 < arg1:
        revert with 'NH{q', 17
    if -arg1 + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    return -(-arg1 + 11 / 2)
}

function roll(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg3:
        revert with 'NH{q', 18
    if sha3(block.timestamp, arg1, arg2) % arg3 > -2:
        revert with 'NH{q', 17
    return ((sha3(block.timestamp, arg1, arg2) % arg3) + 1)
}

function hit_die_of_monster(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
    staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.0xc454ca2d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function hit_die(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    if ext_call.return_data[92 len 4] >= 10:
        if sha3(block.timestamp, 0, 0) % 8 > -2:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 0, 0) % 8) + 1 >= 0 and uint32(ext_call.return_data[64]) - 10 / 2 > -(sha3(block.timestamp, 0, 0) % 8) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 0, 0) % 8) + 1 < 0 and uint32(ext_call.return_data[64]) - 10 / 2 < -(sha3(block.timestamp, 0, 0) % 8) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        return ((sha3(block.timestamp, 0, 0) % 8) + (uint32(ext_call.return_data[64]) - 10 / 2) + 1)
    if 11 < ext_call.return_data[92 len 4]:
        revert with 'NH{q', 17
    if -ext_call.return_data[92 len 4] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sha3(block.timestamp, 0, 0) % 8 > -2:
        revert with 'NH{q', 17
    if (sha3(block.timestamp, 0, 0) % 8) + 1 >= 0 and --uint32(ext_call.return_data[64]) + 11 / 2 > -(sha3(block.timestamp, 0, 0) % 8) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
        revert with 'NH{q', 17
    if (sha3(block.timestamp, 0, 0) % 8) + 1 < 0 and --uint32(ext_call.return_data[64]) + 11 / 2 < -(sha3(block.timestamp, 0, 0) % 8) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    return ((sha3(block.timestamp, 0, 0) % 8) + -(-uint32(ext_call.return_data[64]) + 11 / 2) + 1)
}

function initiative_check(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    if ext_call.return_data[60 len 4] >= 10:
        if sha3(block.timestamp, 2, 0) % 20 > -2:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 2, 0) % 20) + 1 >= 0 and uint32(ext_call.return_data[32]) - 10 / 2 > -(sha3(block.timestamp, 2, 0) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 2, 0) % 20) + 1 < 0 and uint32(ext_call.return_data[32]) - 10 / 2 < -(sha3(block.timestamp, 2, 0) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 420] = arg2
        require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
        staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.0xd5573112 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 10:
            mem[(2 * ceil32(return_data.size)) + 448] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 480] = 3
            mem[(2 * ceil32(return_data.size)) + 512] = 0
            if sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20 > -2:
                revert with 'NH{q', 17
            if (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 1 >= 0 and ext_call.return_data[0] - 10 / 2 > -(sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
                revert with 'NH{q', 17
            if (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 1 < 0 and ext_call.return_data[0] - 10 / 2 < -(sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if (sha3(block.timestamp, 2, 0) % 20) + (uint32(ext_call.return_data[32]) - 10 / 2) + 1 < (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + (ext_call.return_data[0] - 10 / 2) + 1:
                return 1
        else:
            if 11 < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 448] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 480] = 3
            mem[(2 * ceil32(return_data.size)) + 512] = 0
            if sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20 > -2:
                revert with 'NH{q', 17
            if (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 1 >= 0 and --ext_call.return_data[0] + 11 / 2 > -(sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
                revert with 'NH{q', 17
            if (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 1 < 0 and --ext_call.return_data[0] + 11 / 2 < -(sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if (sha3(block.timestamp, 2, 0) % 20) + (uint32(ext_call.return_data[32]) - 10 / 2) + 1 < (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + -(-ext_call.return_data[0] + 11 / 2) + 1:
                return 1
    else:
        if 11 < ext_call.return_data[60 len 4]:
            revert with 'NH{q', 17
        if -ext_call.return_data[60 len 4] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sha3(block.timestamp, 2, 0) % 20 > -2:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 2, 0) % 20) + 1 >= 0 and --uint32(ext_call.return_data[32]) + 11 / 2 > -(sha3(block.timestamp, 2, 0) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 2, 0) % 20) + 1 < 0 and --uint32(ext_call.return_data[32]) + 11 / 2 < -(sha3(block.timestamp, 2, 0) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 420] = arg2
        require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
        staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.0xd5573112 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 10:
            mem[(2 * ceil32(return_data.size)) + 448] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 480] = 3
            mem[(2 * ceil32(return_data.size)) + 512] = 0
            if sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20 > -2:
                revert with 'NH{q', 17
            if (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 1 >= 0 and ext_call.return_data[0] - 10 / 2 > -(sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
                revert with 'NH{q', 17
            if (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 1 < 0 and ext_call.return_data[0] - 10 / 2 < -(sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if (sha3(block.timestamp, 2, 0) % 20) + -(-uint32(ext_call.return_data[32]) + 11 / 2) + 1 < (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + (ext_call.return_data[0] - 10 / 2) + 1:
                return 1
        else:
            if 11 < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 448] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 480] = 3
            mem[(2 * ceil32(return_data.size)) + 512] = 0
            if sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20 > -2:
                revert with 'NH{q', 17
            if (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 1 >= 0 and --ext_call.return_data[0] + 11 / 2 > -(sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
                revert with 'NH{q', 17
            if (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 1 < 0 and --ext_call.return_data[0] + 11 / 2 < -(sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if (sha3(block.timestamp, 2, 0) % 20) + -(-uint32(ext_call.return_data[32]) + 11 / 2) + 1 < (sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 96]) % 20) + -(-ext_call.return_data[0] + 11 / 2) + 1:
                return 1
    return 0
}

function attack(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    if ext_call.return_data[28 len 4] >= 10:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sha3(block.timestamp, 4, arg1) % 20 > -2:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 4, arg1) % 20) + 1 >= 0 and sub_f17993d3[ext_call.return_data[0]] > -(sha3(block.timestamp, 4, arg1) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 4, arg1) % 20) + 1 < 0 and sub_f17993d3[ext_call.return_data[0]] < -(sha3(block.timestamp, 4, arg1) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 4, arg1) % 20) + sub_f17993d3[ext_call.return_data[0]] + 1 >= 0 and uint32(ext_call.return_data[0]) - 10 / 2 > -(sha3(block.timestamp, 4, arg1) % 20) + -sub_f17993d3[ext_call.return_data[0]] + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 4, arg1) % 20) + sub_f17993d3[ext_call.return_data[0]] + 1 < 0 and uint32(ext_call.return_data[0]) - 10 / 2 < -(sha3(block.timestamp, 4, arg1) % 20) + -sub_f17993d3[ext_call.return_data[0]] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 420] = arg3
        require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
        staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.hit(uint256 arg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 10:
            mem[(4 * ceil32(return_data.size)) + 448] = block.timestamp
            mem[(4 * ceil32(return_data.size)) + 480] = 5
            mem[(4 * ceil32(return_data.size)) + 512] = arg1
            if sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20 > -2:
                revert with 'NH{q', 17
            if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 1 >= 0 and ext_call.return_data[0] - 10 / 2 > -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
                revert with 'NH{q', 17
            if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 1 < 0 and ext_call.return_data[0] - 10 / 2 < -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            return (sha3(block.timestamp, 4, arg1) % 20) + sub_f17993d3[ext_call.return_data[0]] + (uint32(ext_call.return_data[0]) - 10 / 2) + 1, 
                   (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + (ext_call.return_data[0] - 10 / 2) + 1
        if 11 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 448] = block.timestamp
        mem[(4 * ceil32(return_data.size)) + 480] = 5
        mem[(4 * ceil32(return_data.size)) + 512] = arg1
        if sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20 > -2:
            revert with 'NH{q', 17
        if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 1 >= 0 and --ext_call.return_data[0] + 11 / 2 > -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 1 < 0 and --ext_call.return_data[0] + 11 / 2 < -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        return (sha3(block.timestamp, 4, arg1) % 20) + sub_f17993d3[ext_call.return_data[0]] + (uint32(ext_call.return_data[0]) - 10 / 2) + 1, 
               (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + -(-ext_call.return_data[0] + 11 / 2) + 1
    if 11 < ext_call.return_data[28 len 4]:
        revert with 'NH{q', 17
    if -ext_call.return_data[28 len 4] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sha3(block.timestamp, 4, arg1) % 20 > -2:
        revert with 'NH{q', 17
    if (sha3(block.timestamp, 4, arg1) % 20) + 1 >= 0 and sub_f17993d3[ext_call.return_data[0]] > -(sha3(block.timestamp, 4, arg1) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
        revert with 'NH{q', 17
    if (sha3(block.timestamp, 4, arg1) % 20) + 1 < 0 and sub_f17993d3[ext_call.return_data[0]] < -(sha3(block.timestamp, 4, arg1) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if (sha3(block.timestamp, 4, arg1) % 20) + sub_f17993d3[ext_call.return_data[0]] + 1 >= 0 and --uint32(ext_call.return_data[0]) + 11 / 2 > -(sha3(block.timestamp, 4, arg1) % 20) + -sub_f17993d3[ext_call.return_data[0]] + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
        revert with 'NH{q', 17
    if (sha3(block.timestamp, 4, arg1) % 20) + sub_f17993d3[ext_call.return_data[0]] + 1 < 0 and --uint32(ext_call.return_data[0]) + 11 / 2 < -(sha3(block.timestamp, 4, arg1) % 20) + -sub_f17993d3[ext_call.return_data[0]] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 420] = arg3
    require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
    staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.hit(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 10:
        mem[(4 * ceil32(return_data.size)) + 448] = block.timestamp
        mem[(4 * ceil32(return_data.size)) + 480] = 5
        mem[(4 * ceil32(return_data.size)) + 512] = arg1
        if sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20 > -2:
            revert with 'NH{q', 17
        if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 1 >= 0 and ext_call.return_data[0] - 10 / 2 > -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 1 < 0 and ext_call.return_data[0] - 10 / 2 < -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        return (sha3(block.timestamp, 4, arg1) % 20) + sub_f17993d3[ext_call.return_data[0]] + -(-uint32(ext_call.return_data[0]) + 11 / 2) + 1, 
               (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + (ext_call.return_data[0] - 10 / 2) + 1
    if 11 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 448] = block.timestamp
    mem[(4 * ceil32(return_data.size)) + 480] = 5
    mem[(4 * ceil32(return_data.size)) + 512] = arg1
    if sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20 > -2:
        revert with 'NH{q', 17
    if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 1 >= 0 and --ext_call.return_data[0] + 11 / 2 > -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
        revert with 'NH{q', 17
    if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 1 < 0 and --ext_call.return_data[0] + 11 / 2 < -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    return (sha3(block.timestamp, 4, arg1) % 20) + sub_f17993d3[ext_call.return_data[0]] + -(-uint32(ext_call.return_data[0]) + 11 / 2) + 1, 
           (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 20) + -(-ext_call.return_data[0] + 11 / 2) + 1
}

function damage(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    if ext_call.return_data[28 len 4] >= 10:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not sub_1e7ec3c0[ext_call.return_data[0]]:
            revert with 'NH{q', 18
        if sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]] > -2:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + 1 >= 0 and uint32(ext_call.return_data[0]) - 10 / 2 > -(sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + 1 < 0 and uint32(ext_call.return_data[0]) - 10 / 2 < -(sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + (uint32(ext_call.return_data[0]) - 10 / 2) + 1 >= 1:
            mem[(2 * ceil32(return_data.size)) + 420] = arg3
            require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
            staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.0xa1d06bdd with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= 10:
                mem[(4 * ceil32(return_data.size)) + 448] = block.timestamp
                mem[(4 * ceil32(return_data.size)) + 480] = 7
                mem[(4 * ceil32(return_data.size)) + 512] = arg1
                if sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6 > -2:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 >= 0 and ext_call.return_data[0] - 10 / 2 > -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 < 0 and ext_call.return_data[0] - 10 / 2 < -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + (ext_call.return_data[0] - 10 / 2) + 1 >= 1:
                    return (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + (uint32(ext_call.return_data[0]) - 10 / 2) + 1, 
                           (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + (ext_call.return_data[0] - 10 / 2) + 1
            else:
                if 11 < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + 448] = block.timestamp
                mem[(4 * ceil32(return_data.size)) + 480] = 7
                mem[(4 * ceil32(return_data.size)) + 512] = arg1
                if sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6 > -2:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 >= 0 and --ext_call.return_data[0] + 11 / 2 > -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 < 0 and --ext_call.return_data[0] + 11 / 2 < -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + -(-ext_call.return_data[0] + 11 / 2) + 1 >= 1:
                    return (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + (uint32(ext_call.return_data[0]) - 10 / 2) + 1, 
                           (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + -(-ext_call.return_data[0] + 11 / 2) + 1
            return (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + (uint32(ext_call.return_data[0]) - 10 / 2) + 1, 
                   1
    else:
        if 11 < ext_call.return_data[28 len 4]:
            revert with 'NH{q', 17
        if -ext_call.return_data[28 len 4] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not sub_1e7ec3c0[ext_call.return_data[0]]:
            revert with 'NH{q', 18
        if sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]] > -2:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + 1 >= 0 and --uint32(ext_call.return_data[0]) + 11 / 2 > -(sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + 1 < 0 and --uint32(ext_call.return_data[0]) + 11 / 2 < -(sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + -(-uint32(ext_call.return_data[0]) + 11 / 2) + 1 >= 1:
            mem[(2 * ceil32(return_data.size)) + 420] = arg3
            require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
            staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.0xa1d06bdd with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= 10:
                mem[(4 * ceil32(return_data.size)) + 448] = block.timestamp
                mem[(4 * ceil32(return_data.size)) + 480] = 7
                mem[(4 * ceil32(return_data.size)) + 512] = arg1
                if sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6 > -2:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 >= 0 and ext_call.return_data[0] - 10 / 2 > -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 < 0 and ext_call.return_data[0] - 10 / 2 < -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + (ext_call.return_data[0] - 10 / 2) + 1 >= 1:
                    return (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + -(-uint32(ext_call.return_data[0]) + 11 / 2) + 1, 
                           (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + (ext_call.return_data[0] - 10 / 2) + 1
            else:
                if 11 < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + 448] = block.timestamp
                mem[(4 * ceil32(return_data.size)) + 480] = 7
                mem[(4 * ceil32(return_data.size)) + 512] = arg1
                if sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6 > -2:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 >= 0 and --ext_call.return_data[0] + 11 / 2 > -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 < 0 and --ext_call.return_data[0] + 11 / 2 < -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + -(-ext_call.return_data[0] + 11 / 2) + 1 >= 1:
                    return (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + -(-uint32(ext_call.return_data[0]) + 11 / 2) + 1, 
                           (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + -(-ext_call.return_data[0] + 11 / 2) + 1
            return (sha3(block.timestamp, 6, arg1) % sub_1e7ec3c0[ext_call.return_data[0]]) + -(-uint32(ext_call.return_data[0]) + 11 / 2) + 1, 
                   1
    mem[(2 * ceil32(return_data.size)) + 420] = arg3
    require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
    staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.0xa1d06bdd with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 10:
        mem[(4 * ceil32(return_data.size)) + 448] = block.timestamp
        mem[(4 * ceil32(return_data.size)) + 480] = 7
        mem[(4 * ceil32(return_data.size)) + 512] = arg1
        if sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6 > -2:
            revert with 'NH{q', 17
        if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 >= 0 and ext_call.return_data[0] - 10 / 2 > -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 < 0 and ext_call.return_data[0] - 10 / 2 < -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + (ext_call.return_data[0] - 10 / 2) + 1 >= 1:
            return 1, 
                   (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + (ext_call.return_data[0] - 10 / 2) + 1
    else:
        if 11 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 448] = block.timestamp
        mem[(4 * ceil32(return_data.size)) + 480] = 7
        mem[(4 * ceil32(return_data.size)) + 512] = arg1
        if sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6 > -2:
            revert with 'NH{q', 17
        if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 >= 0 and --ext_call.return_data[0] + 11 / 2 > -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe:
            revert with 'NH{q', 17
        if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 1 < 0 and --ext_call.return_data[0] + 11 / 2 < -(sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + -(-ext_call.return_data[0] + 11 / 2) + 1 >= 1:
            return 1, 
                   (sha3(mem[(4 * ceil32(return_data.size)) + 448 len (5 * ceil32(return_data.size)) + 96]) % 6) + -(-ext_call.return_data[0] + 11 / 2) + 1
    return 1, 1
}

function ac(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    if ext_call.return_data[60 len 4] >= 10:
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[28 len 4]
        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == ext_call.return_data[156 len 4]
        require ext_call.return_data[160] == ext_call.return_data[188 len 4]
        if ext_call.return_data[156 len 4] >= 10:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] / 5 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] / 5) + 10 >= 0 and uint32(ext_call.return_data[128]) - 10 / 2 > -(ext_call.return_data[0] / 5) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] / 5) + 10 < 0 and uint32(ext_call.return_data[128]) - 10 / 2 < -(ext_call.return_data[0] / 5) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] / 5) + (ext_call.return_data[156 len 4] - 10 / 2) + 10 >= 0 and uint32(ext_call.return_data[32]) - 10 / 2 > -(ext_call.return_data[0] / 5) + -(ext_call.return_data[156 len 4] - 10 / 2) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] / 5) + (ext_call.return_data[156 len 4] - 10 / 2) + 10 < 0 and uint32(ext_call.return_data[32]) - 10 / 2 < -(ext_call.return_data[0] / 5) + -(ext_call.return_data[156 len 4] - 10 / 2) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6:
                revert with 'NH{q', 17
            require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
            staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.0x48ac6aad with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= 10:
                if ext_call.return_data[0] - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                    revert with 'NH{q', 17
                return (ext_call.return_data[0] / 5) + (ext_call.return_data[156 len 4] - 10 / 2) + (uint32(ext_call.return_data[32]) - 10 / 2) + 10, 
                       (ext_call.return_data[0] - 10 / 2) + 10
            if 11 < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if --ext_call.return_data[0] + 11 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                revert with 'NH{q', 17
            return (ext_call.return_data[0] / 5) + (ext_call.return_data[156 len 4] - 10 / 2) + (uint32(ext_call.return_data[32]) - 10 / 2) + 10, 
                   -(-ext_call.return_data[0] + 11 / 2) + 10
        if 11 < ext_call.return_data[156 len 4]:
            revert with 'NH{q', 17
        if -ext_call.return_data[156 len 4] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] / 5 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] / 5) + 10 >= 0 and --uint32(ext_call.return_data[128]) + 11 / 2 > -(ext_call.return_data[0] / 5) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] / 5) + 10 < 0 and --uint32(ext_call.return_data[128]) + 11 / 2 < -(ext_call.return_data[0] / 5) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] / 5) + -(-ext_call.return_data[156 len 4] + 11 / 2) + 10 >= 0 and uint32(ext_call.return_data[32]) - 10 / 2 > -(ext_call.return_data[0] / 5) + (-ext_call.return_data[156 len 4] + 11 / 2) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] / 5) + -(-ext_call.return_data[156 len 4] + 11 / 2) + 10 < 0 and uint32(ext_call.return_data[32]) - 10 / 2 < -(ext_call.return_data[0] / 5) + (-ext_call.return_data[156 len 4] + 11 / 2) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6:
            revert with 'NH{q', 17
        require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
        staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.0x48ac6aad with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 10:
            if ext_call.return_data[0] - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                revert with 'NH{q', 17
            return (ext_call.return_data[0] / 5) + -(-ext_call.return_data[156 len 4] + 11 / 2) + (uint32(ext_call.return_data[32]) - 10 / 2) + 10, 
                   (ext_call.return_data[0] - 10 / 2) + 10
        if 11 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if --ext_call.return_data[0] + 11 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] / 5) + -(-ext_call.return_data[156 len 4] + 11 / 2) + (uint32(ext_call.return_data[32]) - 10 / 2) + 10, 
               -(-ext_call.return_data[0] + 11 / 2) + 10
    if 11 < ext_call.return_data[60 len 4]:
        revert with 'NH{q', 17
    if -ext_call.return_data[60 len 4] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    if ext_call.return_data[156 len 4] >= 10:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] / 5 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] / 5) + 10 >= 0 and uint32(ext_call.return_data[128]) - 10 / 2 > -(ext_call.return_data[0] / 5) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] / 5) + 10 < 0 and uint32(ext_call.return_data[128]) - 10 / 2 < -(ext_call.return_data[0] / 5) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] / 5) + (ext_call.return_data[156 len 4] - 10 / 2) + 10 >= 0 and --uint32(ext_call.return_data[32]) + 11 / 2 > -(ext_call.return_data[0] / 5) + -(ext_call.return_data[156 len 4] - 10 / 2) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] / 5) + (ext_call.return_data[156 len 4] - 10 / 2) + 10 < 0 and --uint32(ext_call.return_data[32]) + 11 / 2 < -(ext_call.return_data[0] / 5) + -(ext_call.return_data[156 len 4] - 10 / 2) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6:
            revert with 'NH{q', 17
        require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
        staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.0x48ac6aad with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 10:
            if ext_call.return_data[0] - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                revert with 'NH{q', 17
            return (ext_call.return_data[0] / 5) + (ext_call.return_data[156 len 4] - 10 / 2) + -(-uint32(ext_call.return_data[32]) + 11 / 2) + 10, 
                   (ext_call.return_data[0] - 10 / 2) + 10
        if 11 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if --ext_call.return_data[0] + 11 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] / 5) + (ext_call.return_data[156 len 4] - 10 / 2) + -(-uint32(ext_call.return_data[32]) + 11 / 2) + 10, 
               -(-ext_call.return_data[0] + 11 / 2) + 10
    if 11 < ext_call.return_data[156 len 4]:
        revert with 'NH{q', 17
    if -ext_call.return_data[156 len 4] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 5 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] / 5) + 10 >= 0 and --uint32(ext_call.return_data[128]) + 11 / 2 > -(ext_call.return_data[0] / 5) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] / 5) + 10 < 0 and --uint32(ext_call.return_data[128]) + 11 / 2 < -(ext_call.return_data[0] / 5) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] / 5) + -(-ext_call.return_data[156 len 4] + 11 / 2) + 10 >= 0 and --uint32(ext_call.return_data[32]) + 11 / 2 > -(ext_call.return_data[0] / 5) + (-ext_call.return_data[156 len 4] + 11 / 2) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] / 5) + -(-ext_call.return_data[156 len 4] + 11 / 2) + 10 < 0 and --uint32(ext_call.return_data[32]) + 11 / 2 < -(ext_call.return_data[0] / 5) + (-ext_call.return_data[156 len 4] + 11 / 2) + 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6:
        revert with 'NH{q', 17
    require ext_code.size(0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee)
    staticcall 0x2d2f7462197d4cfeb6491e254a16d3fb2d2030ee.0x48ac6aad with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 10:
        if ext_call.return_data[0] - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] / 5) + -(-ext_call.return_data[156 len 4] + 11 / 2) + -(-uint32(ext_call.return_data[32]) + 11 / 2) + 10, 
               (ext_call.return_data[0] - 10 / 2) + 10
    if 11 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if -ext_call.return_data[0] + 11 / 2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if --ext_call.return_data[0] + 11 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] / 5) + -(-ext_call.return_data[156 len 4] + 11 / 2) + -(-uint32(ext_call.return_data[32]) + 11 / 2) + 10, 
           -(-ext_call.return_data[0] + 11 / 2) + 10
}



}
