contract main {




// =====================  Runtime code  =====================


address owner;
address nebulaAddress;
address tokenAddress;
mapping of uint8 sub_0872512b;
mapping of struct sub_d99c2a72;
uint256 stor5;
uint256 stor6;
mapping of uint256 nextRq;
mapping of uint256 prevRq;

function sub_0872512b(?) payable {
    require calldata.size - 4 >= 32
    require sub_0872512b[arg1] <= 4
    return sub_0872512b[arg1]
}

function nextRq(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nextRq[arg1]
}

function nebula() payable {
    return nebulaAddress
}

function owner() payable {
    return owner
}

function tokenAddress() payable {
    return tokenAddress
}

function prevRq(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return prevRq[arg1]
}

function sub_d99c2a72(?) payable {
    require calldata.size - 4 >= 32
    return sub_d99c2a72[arg1].field_0, sub_d99c2a72[arg1].field_256, sub_d99c2a72[arg1].field_512
}

function _fallback() payable {
    revert
}

function requestsQueue() payable {
    return stor5, stor6
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferTokenOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function createTransferUnwrapRequest(uint256 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    sub_d99c2a72[msg.sender][arg2][block.number][arg1].field_0 = msg.sender
    sub_d99c2a72[msg.sender][arg2][block.number][arg1].field_256 = arg2
    sub_d99c2a72[msg.sender][arg2][block.number][arg1].field_512 = arg1
    sub_0872512b[msg.sender][arg2][block.number][arg1] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.burnFrom(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x6eed522bf78c8a4258ec9f9d55d6652ef444e3bd)
    delegate 0x6eed522bf78c8a4258ec9f9d55d6652ef444e3bd.0xa506d954 with:
         gas gas_remaining wei
        args 5, sha3(msg.sender, arg2, block.number, arg1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x78e1c38f: sha3(msg.sender, arg2, block.number, arg1), msg.sender, arg2, arg1
}

function attachValue(bytes arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if nebulaAddress != msg.sender:
        revert with 0, 'access denied'
    idx = 0
    while idx < arg1.length:
        if m != 0:
            if c != 0:
                revert with 0, 'invalid data'
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_30] = arg1.length
            mem[_30 + 32 len arg1.length] = arg1[all]
            mem[_30 + arg1.length + 32] = 0
            s = idx + 1
            while s < idx + 33:
                require s < arg1.length
                s = s + 1
                continue 
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_58] = arg1.length
            mem[_58 + 32 len arg1.length] = arg1[all]
            mem[_58 + arg1.length + 32] = 0
            require idx + 33 < arg1.length
            require sub_0872512b[0] <= 4
            if sub_0872512b[0] != 1:
                revert with 0, 'invalid request status'
            mem[0] = 0
            mem[32] = 3
            sub_0872512b[0] = 0
            mem[mem[64]] = 0x9d6ad84b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 5
            mem[mem[64] + 36] = 0
            require ext_code.size(0x6eed522bf78c8a4258ec9f9d55d6652ef444e3bd)
            delegate 0x6eed522bf78c8a4258ec9f9d55d6652ef444e3bd.0x9d6ad84b with:
                 gas gas_remaining wei
                args 5, 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 34
            continue 
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_27] = arg1.length
        mem[_27 + 32 len arg1.length] = arg1[all]
        mem[_27 + arg1.length + 32] = 0
        s = idx + 1
        while s < idx + 33:
            require s < arg1.length
            s = s + 1
            continue 
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_60] = arg1.length
        mem[_60 + 32 len arg1.length] = arg1[all]
        mem[_60 + arg1.length + 32] = 0
        s = idx + 33
        while s < idx + 65:
            require s < arg1.length
            s = s + 1
            continue 
        _82 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_82] = arg1.length
        mem[_82 + 32 len arg1.length] = arg1[all]
        mem[_82 + arg1.length + 32] = 0
        s = idx + 65
        while s < idx + 85:
            require s < arg1.length
            s = s + 1
            continue 
        require sub_0872512b[0] <= 4
        if sub_0872512b[0]:
            revert with 0, 'invalid request status'
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = 0
        mem[32] = 3
        sub_0872512b[0] = 3
        idx = idx + 85
        continue 
}



}
