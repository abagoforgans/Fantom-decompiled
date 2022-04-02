contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of address gravatarToOwner;
mapping of uint256 ownerToGravatar;
address sub_d1c22891Address;

function gravatarToOwner(uint256 arg1) {
    return gravatarToOwner[arg1]
}

function ownerToGravatar(address arg1) {
    return ownerToGravatar[arg1]
}

function sub_d1c22891(?) {
    return sub_d1c22891Address
}

function _fallback() payable {
    revert
}

function sub_4dbe8193(?) {
    require ext_code.size(sub_d1c22891Address)
    call sub_d1c22891Address.0x9b04daa8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_82d43b85(?) {
    require ext_code.size(sub_d1c22891Address)
    call sub_d1c22891Address.0x5dfff99c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setMythicalGravatar() {
    require msg.sender == 0x8d3e809fbd258083a5ba004a527159da535c8aba
    stor0.length++
    stor0[stor0.length].field_0 = 0
    stor0[stor0.length].field_256 = 0
    stor0[stor0.length].field_256 = 0
    stor0[stor0.length].field_257 = 1
    stor0[stor0.length].field_264 = ' ' / 256
    idx = 0
    while stor[(3 * stor0.length) + ('name', 'stor0', 0) + 1].length + 31 / 32 > idx:
        stor[idx + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0 = 0
        idx = idx + 1
        continue 
    stor0[stor0.length].field_512 = 0
    stor0[stor0.length].field_513 = 1
    stor0[stor0.length].field_520 = ' ' / 256
    idx = 0
    while stor[(3 * stor0.length) + ('name', 'stor0', 0) + 2].length + 31 / 32 > idx:
        stor[idx + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 2)].field_0 = 0
        idx = idx + 1
        continue 
}

function updateGravatarName(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require ownerToGravatar[address(msg.sender)]
    require ownerToGravatar[address(msg.sender)] < stor0.length
    require msg.sender == stor0[stor2[address(msg.sender)]].field_0
    require ownerToGravatar[address(msg.sender)] < stor0.length
    stor[sha3((3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    require ownerToGravatar[address(msg.sender)] < stor0.length
    mem[ceil32(arg1.length) + 128] = ownerToGravatar[address(msg.sender)]
    mem[ceil32(arg1.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 288] = stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 2].length
    mem[arg1.length + ceil32(arg1.length) + 320] = stor[sha3((3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 2)].field_0
    idx = arg1.length + ceil32(arg1.length) + 320
    s = 0
    while arg1.length + ceil32(arg1.length) + stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 2].length + 320 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit UpdatedGravatar(ownerToGravatar[address(msg.sender)], msg.sender, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 288 len arg1.length + stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 2].length + (floor32(stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 2].length - 1) + -stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 2].length + 32 % 32) + -ceil32(arg1.length) + 32]), arg1.length + 160);
}

function createGravatar(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require not ownerToGravatar[address(msg.sender)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    stor0.length++
    stor0[stor0.length].field_0 = msg.sender
    stor[sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor[sha3((3 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0 = Array(len=arg2.length, data=arg2[all])
    gravatarToOwner[stor0.length] = msg.sender
    ownerToGravatar[address(msg.sender)] = stor0.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 416] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit NewGravatar(stor0.length, msg.sender, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 416 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 160);
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
        emit NewGravatar(stor0.length, msg.sender, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 416 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 160);
}

function updateGravatarImage(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require ownerToGravatar[address(msg.sender)]
    require ownerToGravatar[address(msg.sender)] < stor0.length
    require msg.sender == stor0[stor2[address(msg.sender)]].field_0
    require ownerToGravatar[address(msg.sender)] < stor0.length
    stor[sha3((3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 2)][].field_0 = Array(len=arg1.length, data=arg1[all])
    require ownerToGravatar[address(msg.sender)] < stor0.length
    mem[ceil32(arg1.length) + 128] = ownerToGravatar[address(msg.sender)]
    mem[ceil32(arg1.length) + 288] = stor[sha3((3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1)].field_0
    idx = ceil32(arg1.length) + 288
    s = 0
    while ceil32(arg1.length) + stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + 288 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 288] = arg1.length
    mem[ceil32(arg1.length) + stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit UpdatedGravatar(ownerToGravatar[address(msg.sender)], msg.sender, Array(len=stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length, data=mem[ceil32(arg1.length) + 288 len stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 160);
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + 32 % 32) + -(arg1.length % 32) + 352 len arg1.length % 32]
        emit UpdatedGravatar(ownerToGravatar[address(msg.sender)], msg.sender, Array(len=stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length, data=mem[ceil32(arg1.length) + 288 len stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 320 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * stor2[address(msg.sender)]) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 160);
}

function gravatars(uint256 arg1) {
    require arg1 < stor0.length
    mem[96] = stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length
    mem[128] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_0
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 160
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + 128] = stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length
    mem[0] = (3 * arg1) + sha3(0) + 2
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + 160] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
    idx = ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + 160
    s = 0
    while ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 160] = stor0[arg1].field_0
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 192] = 96
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 256] = stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 288 len ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length)] = mem[128 len ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length)]
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 224] = stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 128
    mem[stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 288] = stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length
    mem[stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 320 len ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length)] = mem[ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + 160 len ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length)]
    if not stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length % 32:
        return stor0[arg1].field_0, 
               Array(len=stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length, data=mem[128 len ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length)], mem[(2 * ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length)) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + -ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + 32]),
               stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 128
    mem[floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 320] = mem[floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + -stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length % 32 + 352 len stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length % 32]
    return stor0[arg1].field_0, 
           Array(len=stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length, data=mem[128 len ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length)], mem[(2 * ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length)) + ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + 288 len floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 2].length) + stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + -ceil32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length) + 64]),
           stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 128
}

function getGravatar(address arg1) {
    mem[32] = 2
    require ownerToGravatar[address(arg1)] < stor0.length
    mem[96] = stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length
    mem[128] = stor[sha3((3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1)].field_0
    idx = 128
    s = 0
    while stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 160
    mem[ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + 128] = stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length
    mem[0] = (3 * ownerToGravatar[address(arg1)]) + sha3(0) + 2
    mem[ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + 160] = stor[sha3((3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2)].field_0
    idx = ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + 160
    s = 0
    while ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 160] = 64
    mem[ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 224] = stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length
    mem[ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 256 len ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length)] = mem[128 len ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length)]
    mem[ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 192] = stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length + 96
    mem[stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 256] = stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length
    mem[stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288 len ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length)] = mem[ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + 160 len ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length)]
    if not stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length % 32:
        return Array(len=stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length, data=mem[128 len ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length)], mem[(2 * ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length)) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 256 len stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length + stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length + -ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + 32]), 
               stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length + 96
    mem[floor32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288] = mem[floor32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + -stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length % 32 + 320 len stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length % 32]
    return Array(len=stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length, data=mem[128 len ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length)], mem[(2 * ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length)) + ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 256 len floor32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length + -ceil32(stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length) + 64]), 
           stor[(3 * stor2[address(arg1)]) + ('name', 'stor0', 0) + 1].length + 96
}



}
