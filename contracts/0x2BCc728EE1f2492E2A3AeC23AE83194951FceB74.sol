contract main {




// =====================  Runtime code  =====================


const sub_fe31aa80(?) = 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c


array of struct _owners;
address sub_508c4631Address;
mapping of address ownerOfToken;
uint256 sub_a41c6353;

function sub_508c4631(?) {
    return sub_508c4631Address
}

function sub_807035a6(?) {
    return sub_a41c6353
}

function _owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < _owners.length
    return _owners[arg1].field_0
}

function sub_a41c6353(?) {
    return sub_a41c6353
}

function ownerOfToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return ownerOfToken[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_069c2fb0(?) {
    require calldata.size - 4 >= 64
    ownerOfToken[arg1] = arg2
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe27da920: arg1, arg2
}

function sub_24313c67(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        sub_a41c6353 = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0xfe4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function sub_7b22f056(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        sub_508c4631Address = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0xfe4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function getOwners() {
    if not _owners.length:
        mem[(32 * _owners.length) + 128] = 32
        mem[(32 * _owners.length) + 160] = _owners.length
        mem[(32 * _owners.length) + 192 len floor32(_owners.length)] = mem[128 len floor32(_owners.length)]
        return memory
          from (32 * _owners.length) + 128
           len (96 * _owners.length) + 64
    mem[128] = address(_owners.field_0)
    idx = 128
    s = 0
    while (32 * _owners.length) + 96 > idx:
        mem[idx + 32] = _owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * _owners.length) + 192 len floor32(_owners.length)] = mem[128 len floor32(_owners.length)]
    return Array(len=_owners.length, data=mem[128 len floor32(_owners.length)], mem[(32 * _owners.length) + floor32(_owners.length) + 192 len (32 * _owners.length) - floor32(_owners.length)]), 
}

function setOwners(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        _owners.length = arg1.length
        if not arg1.length:
            idx = sha3(0)
            while sha3(0) + _owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(0)
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(0) + (Mask(251, 0, (32 * arg1.length) + 31) >> 5)
            while sha3(0) + _owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    revert with 0, 32, 34, 0xfe4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273, mem[(32 * arg1.length) + 230 len 30]
}

function sub_ca75925f(?) payable {
    require calldata.size - 4 >= 32
    if ownerOfToken[arg1] != msg.sender:
        revert with 0, 'Sender is not owner...'
    require ext_code.size(sub_508c4631Address)
    call sub_508c4631Address.0x88ac55b9 with:
         gas gas_remaining wei
        args msg.sender, sub_a41c6353
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Failed to Res FUM.'
    emit 0x19ea792d: arg1, ownerOfToken[arg1]
}

function sub_65706a78(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ownerOfToken[arg1], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), ownerOfToken[arg1], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != ownerOfToken[arg1]:
            revert with 0, 'Failed to Res FUM.'
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0xfe4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}



}
