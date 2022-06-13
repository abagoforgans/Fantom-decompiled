contract main {




// =====================  Runtime code  =====================


#
#  - attack(address arg1)
#
address eggAddress;
address sub_200dfb1bAddress;
array of address sub_898572a6;
array of struct stor4;
uint256 breedCount;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 health;
uint256 sub_54b2fba7;
uint256 damage;
uint256 sub_e73961f5;
uint256 sub_91cbd001;
uint8 stor18;
uint8 stor18; offset 8
uint8 stor18; offset 16
uint8 stor18; offset 24
mapping of uint256 trust;
mapping of uint256 sub_c6340786;

function sub_200dfb1b(?) payable {
    return sub_200dfb1bAddress
}

function trust(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return trust[arg1]
}

function sub_54b2fba7(?) payable {
    return sub_54b2fba7
}

function health() payable {
    return health
}

function sub_898572a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return sub_898572a6[arg1]
}

function sub_91cbd001(?) payable {
    return sub_91cbd001
}

function damage() payable {
    return damage
}

function egg() payable {
    return eggAddress
}

function sub_c6340786(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    return sub_c6340786[arg1][arg2[all]]
}

function breedCount() payable {
    return breedCount
}

function sub_e73961f5(?) payable {
    return sub_e73961f5
}

function heal() payable {
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if block.timestamp < stor11:
            revert with 0, 17
        if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
            revert with 0, 17
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if trust[msg.sender] < 1:
        revert with 0, 17
    trust[msg.sender]--
    if health > !sub_91cbd001:
        revert with 0, 17
    if health + sub_91cbd001 < sub_54b2fba7:
        health += sub_91cbd001
    else:
        health = sub_54b2fba7
    emit 0xff9eb7a4: msg.sender
}

function sleep() payable {
    if trust[msg.sender] == -1:
        revert with 0, 17
    trust[msg.sender]++
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if block.timestamp < stor11:
            revert with 0, 17
        if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
            revert with 0, 17
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if block.timestamp < stor12:
        revert with 0, 17
    if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
        revert with 0, 17
    if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) <= 50:
        revert with 0, 'im not feeling sleepy'
    if block.timestamp < stor11:
        revert with 0, 17
    if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
        revert with 0, 17
    if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) >= 80:
        revert with 0, 'im feeling too gross to sleep'
    stor12 = block.timestamp
    uint8(stor18.field_24) = 0
    if uint8(stor18.field_8) > 250:
        revert with 0, 17
    uint8(stor18.field_8) = uint8(uint8(stor18.field_8) + 5)
    emit 0x331806c3: msg.sender
}

function sub_2e4dab29(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if block.timestamp < stor11:
            revert with 0, 17
        if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
            revert with 0, 17
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if trust[msg.sender] < 10:
        revert with 0, 17
    trust[msg.sender] -= 10
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = sha3(address(arg1), 20)
    if stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])] <= 0:
        revert with 0, 'breed proposal does not exist'
    if stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])] > -604801:
        revert with 0, 17
    if block.timestamp >= stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])] + (168 * 24 * 3600):
        revert with 0, 'breed proposal expired'
    if 1 > !breedCount:
        revert with 0, 17
    if not breedCount + 1:
        if stor8 > -43201:
            revert with 0, 17
        if block.timestamp <= stor8 + (12 * 3600):
            revert with 0, 'I can't breed yet'
    else:
        if breedCount + 1 > 255:
            revert with 0, 17
        if 1 << breedCount + 1 > 0x1845c8a0ce512956d9b1df623a67eac2f0734b78fbd401845c8a0ce512956:
            revert with 0, 17
        if stor8 > !(12 * 3600 * 1 << breedCount + 1):
            revert with 0, 17
        if block.timestamp <= stor8 + (12 * 3600 * 1 << breedCount + 1):
            revert with 0, 'I can't breed yet'
    mem[ceil32(ceil32(arg2.length)) + 97] = this.address
    mem[ceil32(ceil32(arg2.length)) + 129] = address(arg1)
    mem[ceil32(ceil32(arg2.length)) + 161] = 0xe7d7ec4500000000000000000000000000000000000000000000000000000000
    idx = 0
    s = ceil32(ceil32(arg2.length)) + 97
    t = ceil32(ceil32(arg2.length)) + 165
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_200dfb1bAddress)
    call sub_200dfb1bAddress.mem[ceil32(ceil32(arg2.length)) + 161 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 165 len 64], Array(len=arg2[all], data=Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, this.address) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256), arg2.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor8 = block.timestamp
    stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_c6340786', 20)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, this.address) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256] = 0
    if breedCount == -1:
        revert with 0, 17
    breedCount++
    emit 0x28de2430: address(ext_call.return_data[0]), Array(len=arg2.length, data=arg2[all]), msg.sender, address(arg1)
    return address(ext_call.return_data[0])
}

function sub_33e1c1b3(?) payable {
    if trust[msg.sender] < 5:
        revert with 0, 17
    trust[msg.sender] -= 5
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if block.timestamp < stor11:
            revert with 0, 17
        if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
            revert with 0, 17
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if stor6 > -3601:
        revert with 0, 17
    if block.timestamp <= stor6 + 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'i can only upgrade every so often'
    if sub_e73961f5 and 10^16 > -1 / sub_e73961f5:
        revert with 0, 17
    if sub_e73961f5 < 10^16 * sub_e73961f5 / 10^18:
        revert with 0, 17
    sub_e73961f5 -= 10^16 * sub_e73961f5 / 10^18
    stor6 = block.timestamp
    emit 0x90cf1b01: msg.sender
}

function feed() payable {
    if trust[msg.sender] == -1:
        revert with 0, 17
    trust[msg.sender]++
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if block.timestamp < stor11:
            revert with 0, 17
        if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
            revert with 0, 17
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) <= 50:
        revert with 0, 'i dont need to eat'
    if block.timestamp < stor9:
        revert with 0, 17
    if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
        revert with 0, 17
    if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) >= 80:
        revert with 0, 'im too tired to eat'
    if block.timestamp < stor11:
        revert with 0, 17
    if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
        revert with 0, 17
    if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) >= 80:
        revert with 0, 'im feeling too gross to eat'
    stor10 = block.timestamp
    uint8(stor18.field_0) = 0
    if uint8(stor18.field_16) > 245:
        revert with 0, 17
    uint8(stor18.field_16) = uint8(uint8(stor18.field_16) + 10)
    if uint8(stor18.field_8) > 252:
        revert with 0, 17
    uint8(stor18.field_8) = uint8(uint8(stor18.field_8) + 3)
    emit 0x28d99342: msg.sender
}

function sub_6599c9e0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if block.timestamp < stor11:
            revert with 0, 17
        if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
            revert with 0, 17
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if trust[msg.sender] < 10:
        revert with 0, 17
    trust[msg.sender] -= 10
    require ext_code.size(sub_200dfb1bAddress)
    staticcall sub_200dfb1bAddress.0xecb421f1 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'parent is not a dragon'
    if not ext_code.size(arg1):
        revert with 0, 'parent dragon is dead'
    if this.address == address(arg1):
        revert with 0, 'i can't breed with myself'
    if arg2.length <= 0:
        revert with 0, 'my child must have a name'
    require ext_code.size(address(arg1))
    call address(arg1).0xa22ae22d with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa8d2e334: Array(len=arg2.length, data=arg2[all]), msg.sender, address(arg1)
}

function sub_88e1cad5(?) payable {
    if trust[msg.sender] < 5:
        revert with 0, 17
    trust[msg.sender] -= 5
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if block.timestamp < stor11:
            revert with 0, 17
        if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
            revert with 0, 17
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if stor6 > -3601:
        revert with 0, 17
    if block.timestamp <= stor6 + 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'i can only upgrade every so often'
    if sub_54b2fba7 and 10^16 > -1 / sub_54b2fba7:
        revert with 0, 17
    if sub_54b2fba7 > !(10^16 * sub_54b2fba7 / 10^18):
        revert with 0, 17
    sub_54b2fba7 += 10^16 * sub_54b2fba7 / 10^18
    stor6 = block.timestamp
    emit 0x91d3e258: msg.sender
}

function play() payable {
    if trust[msg.sender] == -1:
        revert with 0, 17
    trust[msg.sender]++
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if block.timestamp < stor11:
            revert with 0, 17
        if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
            revert with 0, 17
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if block.timestamp < stor9:
        revert with 0, 17
    if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
        revert with 0, 17
    if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) <= 50:
        revert with 0, 'i dont wanna play'
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) >= 80:
        revert with 0, 'im too hungry to play'
    if block.timestamp < stor12:
        revert with 0, 17
    if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
        revert with 0, 17
    if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) >= 80:
        revert with 0, 'im too sleepy to play'
    if block.timestamp < stor11:
        revert with 0, 17
    if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
        revert with 0, 17
    if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) >= 80:
        revert with 0, 'im feeling too gross to play'
    stor9 = block.timestamp
    uint8(stor18.field_16) = 0
    if uint8(stor18.field_0) > 245:
        revert with 0, 17
    uint8(stor18.field_0) = uint8(uint8(stor18.field_0) + 10)
    if uint8(stor18.field_24) > 245:
        revert with 0, 17
    uint8(stor18.field_24) = uint8(uint8(stor18.field_24) + 10)
    if uint8(stor18.field_8) > 250:
        revert with 0, 17
    uint8(stor18.field_8) = uint8(uint8(stor18.field_8) + 5)
    emit 0x74ff4718: msg.sender
}

function sub_a1e57253(?) payable {
    if trust[msg.sender] < 5:
        revert with 0, 17
    trust[msg.sender] -= 5
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if block.timestamp < stor11:
            revert with 0, 17
        if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
            revert with 0, 17
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if stor6 > -3601:
        revert with 0, 17
    if block.timestamp <= stor6 + 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'i can only upgrade every so often'
    if sub_91cbd001 and 10^16 > -1 / sub_91cbd001:
        revert with 0, 17
    if sub_91cbd001 > !(10^16 * sub_91cbd001 / 10^18):
        revert with 0, 17
    sub_91cbd001 += 10^16 * sub_91cbd001 / 10^18
    stor6 = block.timestamp
    emit 0x5d39218f: msg.sender
}

function sub_aa1e3409(?) payable {
    require ext_code.size(sub_200dfb1bAddress)
    staticcall sub_200dfb1bAddress.0xecb421f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'attacker is not a dragon'
    require ext_code.size(msg.sender)
    staticcall msg.sender.0xa1580f1a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if health <= ext_call.return_data[0]:
        selfdestruct(0)
    require ext_code.size(msg.sender)
    staticcall msg.sender.0xa1580f1a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if health < ext_call.return_data[0]:
        revert with 0, 17
    health -= ext_call.return_data[0]
    emit 0x15aa33b5: msg.sender
}

function sub_ccd30b5e(?) payable {
    if trust[msg.sender] < 5:
        revert with 0, 17
    trust[msg.sender] -= 5
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if block.timestamp < stor11:
            revert with 0, 17
        if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
            revert with 0, 17
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if stor6 > -3601:
        revert with 0, 17
    if block.timestamp <= stor6 + 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'i can only upgrade every so often'
    if damage and 10^16 > -1 / damage:
        revert with 0, 17
    if damage > !(10^16 * damage / 10^18):
        revert with 0, 17
    damage += 10^16 * damage / 10^18
    stor6 = block.timestamp
    emit 0xb9c0fb19: msg.sender
}

function clean() payable {
    if trust[msg.sender] == -1:
        revert with 0, 17
    trust[msg.sender]++
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    if block.timestamp < stor11:
        revert with 0, 17
    if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
        revert with 0, 17
    if uint8(stor18.field_0) + (block.timestamp - stor10 / 300) > 100:
        if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) > 100:
            if block.timestamp < stor9:
                revert with 0, 17
            if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
                revert with 0, 17
            if uint8(stor18.field_16) + (block.timestamp - stor9 / 300) > 100:
                if block.timestamp < stor12:
                    revert with 0, 17
                if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
                    revert with 0, 17
                if uint8(stor18.field_24) + (block.timestamp - stor12 / 300) > 100:
                    selfdestruct(0)
    if uint8(stor18.field_8) + (block.timestamp - stor11 / 300) <= 50:
        revert with 0, 'i dont need a bath'
    stor11 = block.timestamp
    uint8(stor18.field_8) = 0
    emit 0x8cf0d2ab: msg.sender
}

function _fallback() payable {
    revert
}

function canUpgrade() payable {
    if stor6 > -3601:
        revert with 0, 17
    return (block.timestamp > stor6 + 3600)
}

function sub_cdf55f8b(?) payable {
    if stor7 > !sub_e73961f5:
        revert with 0, 17
    return (block.timestamp > stor7 + sub_e73961f5)
}

function getHunger() payable {
    if block.timestamp < stor10:
        revert with 0, 17
    if uint8(stor18.field_0) > !(block.timestamp - stor10 / 300):
        revert with 0, 17
    return (uint8(stor18.field_0) + (block.timestamp - stor10 / 300))
}

function getBoredom() payable {
    if block.timestamp < stor9:
        revert with 0, 17
    if uint8(stor18.field_16) > !(block.timestamp - stor9 / 300):
        revert with 0, 17
    return (uint8(stor18.field_16) + (block.timestamp - stor9 / 300))
}

function getSleepiness() payable {
    if block.timestamp < stor12:
        revert with 0, 17
    if uint8(stor18.field_24) > !(block.timestamp - stor12 / 300):
        revert with 0, 17
    return (uint8(stor18.field_24) + (block.timestamp - stor12 / 300))
}

function getUncleanliness() payable {
    if block.timestamp < stor11:
        revert with 0, 17
    if uint8(stor18.field_8) > !(block.timestamp - stor11 / 300):
        revert with 0, 17
    return (uint8(stor18.field_8) + (block.timestamp - stor11 / 300))
}

function sub_44d8d5ff(?) payable {
    if stor6 > -3601:
        revert with 0, 17
    if block.timestamp > stor6 + 3600:
        return 0
    if block.timestamp < stor6:
        revert with 0, 17
    if block.timestamp - stor6 > -3601:
        revert with 0, 17
    return (block.timestamp + -stor6 + 3600)
}

function sub_78d24528(?) payable {
    if stor7 > !sub_e73961f5:
        revert with 0, 17
    if block.timestamp > stor7 + sub_e73961f5:
        return 0
    if block.timestamp < stor7:
        revert with 0, 17
    if block.timestamp - stor7 > !sub_e73961f5:
        revert with 0, 17
    return (block.timestamp - stor7 + sub_e73961f5)
}

function sub_0d9341f2(?) payable {
    if 1 > !breedCount:
        revert with 0, 17
    if not breedCount + 1:
        if stor8 > -43201:
            revert with 0, 17
        return (block.timestamp > stor8 + (12 * 3600))
    if breedCount + 1 > 255:
        revert with 0, 17
    if 1 << breedCount + 1 > 0x1845c8a0ce512956d9b1df623a67eac2f0734b78fbd401845c8a0ce512956:
        revert with 0, 17
    if stor8 > !(12 * 3600 * 1 << breedCount + 1):
        revert with 0, 17
    return (block.timestamp > stor8 + (12 * 3600 * 1 << breedCount + 1))
}

function sub_a22ae22d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(sub_200dfb1bAddress)
    staticcall sub_200dfb1bAddress.0xecb421f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'parent is not a dragon'
    stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_c6340786', 20)))][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] = block.timestamp
    emit 0x8678ef09: Array(len=arg1.length, data=arg1[all]), msg.sender
}

function sub_26d71ad7(?) payable {
    if 1 > !breedCount:
        revert with 0, 17
    if not breedCount + 1:
        if stor8 > -43201:
            revert with 0, 17
        if block.timestamp > stor8 + (12 * 3600):
            return 0
    else:
        if breedCount + 1 > 255:
            revert with 0, 17
        if 1 << breedCount + 1 > 0x1845c8a0ce512956d9b1df623a67eac2f0734b78fbd401845c8a0ce512956:
            revert with 0, 17
        if stor8 > !(12 * 3600 * 1 << breedCount + 1):
            revert with 0, 17
        if block.timestamp > stor8 + (12 * 3600 * 1 << breedCount + 1):
            return 0
    if 1 > !breedCount:
        revert with 0, 17
    if not breedCount + 1:
        if block.timestamp < stor8:
            revert with 0, 17
        if block.timestamp - stor8 > -43201:
            revert with 0, 17
        return (block.timestamp + -stor8 + (12 * 3600))
    if breedCount + 1 > 255:
        revert with 0, 17
    if 1 << breedCount + 1 > 0x1845c8a0ce512956d9b1df623a67eac2f0734b78fbd401845c8a0ce512956:
        revert with 0, 17
    if block.timestamp < stor8:
        revert with 0, 17
    if block.timestamp - stor8 > !(12 * 3600 * 1 << breedCount + 1):
        revert with 0, 17
    return (block.timestamp - stor8 + (12 * 3600 * 1 << breedCount + 1))
}

function name() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        else:
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor4.length.field_1 % 128:
                if 31 < stor4.length.field_1 % 128:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor4.length.field_1 % 128:
            if 31 < stor4.length.field_1 % 128:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[ceil32(stor4.length.field_1 % 128) + stor4.length.field_1 % 128 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}



}
