contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


uint256 stor0;
address owner;
array of struct stor2;
mapping of uint8 stor3;
mapping of uint256 sub_c0b814fc;
mapping of struct sub_906d53e9;
address feeAddress;
uint256 voteFee;
address sub_796df8d5Address;

function feeAddress() {
    return feeAddress
}

function isTokenSupported(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function sub_796df8d5(?) {
    return sub_796df8d5Address
}

function owner() {
    return owner
}

function sub_906d53e9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_906d53e9[address(arg1)].field_0, sub_906d53e9[address(arg1)].field_256, sub_906d53e9[address(arg1)].field_512
}

function sub_c0b814fc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c0b814fc[address(arg1)]
}

function voteFee() {
    return voteFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function changeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    voteFee = arg1
    emit 0x1ec6dc72: arg1
}

function sub_4bfd0d1d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_796df8d5Address = address(arg1)
    emit 0xdf3701c0: address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_6ae460d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VOTES: only supported tokens may be blocked'
    stor3[address(arg1)] = 0
    emit 0xf526ce48: address(arg1)
}

function sub_9c2f87d1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'VOTES: only data for supported tokens may be changed'
    sub_c0b814fc[address(arg1)] = arg2
    emit 0x7078a4a0: address(arg1), arg2
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VOTES: Amount is bigger than possible'
    call feeAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit withdrawn(arg1);
}

function addSupportedToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VOTES: only non-supported tokens may be used'
    stor3[address(arg1)] = 1
    sub_c0b814fc[address(arg1)] = arg2
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    emit 0x177941f1: address(arg1), arg2
}

function sub_35873033(?) {
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if stor2.length:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = 3
        if bool(stor3[stor2[idx].field_0]) == 1:
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor2[idx].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function sub_0107e472(?) {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + 192
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function sub_fa06ab5c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == arg3
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if voteFee and arg3 > -1 / voteFee:
        revert with 'NH{q', 17
    if msg.value < voteFee * arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VOTES: Fee amount lower than expected'
    if voteFee and arg3 > -1 / voteFee:
        revert with 'NH{q', 17
    if voteFee * arg3 <= 0:
        revert with 0, 'VOTES: safety check'
    if voteFee and arg3 > -1 / voteFee:
        revert with 'NH{q', 17
    call feeAddress with:
       value voteFee * arg3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        if sub_906d53e9[address(arg1)].field_0 > -arg3 - 1:
            revert with 'NH{q', 17
        sub_906d53e9[address(arg1)].field_0 += arg3
    else:
        if sub_906d53e9[address(arg1)].field_256 > -arg3 - 1:
            revert with 'NH{q', 17
        sub_906d53e9[address(arg1)].field_256 += arg3
    sub_906d53e9[address(arg1)].field_512 = block.timestamp
    emit 0x90a8b502: address(arg1), bool(arg2), arg3
    stor0 = 1
}

function sub_6f35c755(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == arg3
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(sub_796df8d5Address)
    staticcall sub_796df8d5Address.0x91394882 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'VOTES: Must have enough free votes'
    require ext_code.size(sub_796df8d5Address)
    call sub_796df8d5Address.0xfe8346cd with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        if sub_906d53e9[address(arg1)].field_0 > -arg3 - 1:
            revert with 'NH{q', 17
        sub_906d53e9[address(arg1)].field_0 += arg3
    else:
        if sub_906d53e9[address(arg1)].field_256 > -arg3 - 1:
            revert with 'NH{q', 17
        sub_906d53e9[address(arg1)].field_256 += arg3
    sub_906d53e9[address(arg1)].field_512 = block.timestamp
    emit 0x659ba0c6: address(arg1), bool(arg2), arg3
    stor0 = 1
}

function sub_cd07ae0e(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    require arg4 == arg4
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VOTES: only supported tokens allowed'
    if sub_c0b814fc[address(arg1)] and arg4 > -1 / sub_c0b814fc[address(arg1)]:
        revert with 'NH{q', 17
    if sub_c0b814fc[address(arg1)] * arg4 <= 0:
        revert with 0, 'VOTES: safety check'
    if arg4 and sub_c0b814fc[address(arg1)] > -1 / arg4:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, feeAddress, arg4 * sub_c0b814fc[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg3:
        if sub_906d53e9[address(arg2)].field_0 > -arg4 - 1:
            revert with 'NH{q', 17
        sub_906d53e9[address(arg2)].field_0 += arg4
    else:
        if sub_906d53e9[address(arg2)].field_256 > -arg4 - 1:
            revert with 'NH{q', 17
        sub_906d53e9[address(arg2)].field_256 += arg4
    sub_906d53e9[address(arg2)].field_512 = block.timestamp
    emit 0x2b175cb1: address(arg1), address(arg2), bool(arg3), arg4
    stor0 = 1
}



}
