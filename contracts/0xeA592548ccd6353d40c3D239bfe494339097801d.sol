contract main {




// =====================  Runtime code  =====================


#
#  - getRequests()
#
address owner;
address nebulaAddress;
address tokenAddress;
mapping of struct requests;
uint256 stor4;
uint256 stor5;
mapping of uint256 nextRq;
mapping of uint256 prevRq;

function nextRq(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nextRq[arg1]
}

function nebula() payable {
    return nebulaAddress
}

function requests(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require requests[arg1].field_768 <= 2
    return requests[arg1].field_0, requests[arg1].field_256, requests[arg1].field_512, requests[arg1].field_768
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

function _fallback() payable {
    revert
}

function requestsQueue() payable {
    return stor4, stor5
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
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'can't transfer from'
    requests[msg.sender][arg2][block.number][arg1].field_0 = msg.sender
    requests[msg.sender][arg2][block.number][arg1].field_256 = arg1
    requests[msg.sender][arg2][block.number][arg1].field_512 = arg2
    requests[msg.sender][arg2][block.number][arg1].field_768 = 1
    require ext_code.size(0x44a767c8dfb14541962353c7d186d4c0c735713f)
    delegate 0x44a767c8dfb14541962353c7d186d4c0c735713f.0xa506d954 with:
         gas gas_remaining wei
        args 4, sha3(msg.sender, arg2, block.number, arg1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8ad0361a: sha3(msg.sender, arg2, block.number, arg1), arg1, arg2
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
        if u != 0:
            if a != 0:
                revert with 0, 'invalid data'
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
            require requests[0].field_768 <= 2
            if requests[0].field_768 != 1:
                revert with 0, 'invalid status'
            mem[0] = 0
            mem[32] = 3
            requests[0].field_768 = 2
            mem[mem[64]] = 0x9d6ad84b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 4
            mem[mem[64] + 36] = 0
            require ext_code.size(0x44a767c8dfb14541962353c7d186d4c0c735713f)
            delegate 0x44a767c8dfb14541962353c7d186d4c0c735713f.0x9d6ad84b with:
                 gas gas_remaining wei
                args 4, 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 33
            continue 
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_24] = arg1.length
        mem[_24 + 32 len arg1.length] = arg1[all]
        mem[_24 + arg1.length + 32] = 0
        s = idx + 1
        while s < idx + 33:
            require s < arg1.length
            s = s + 1
            continue 
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_59] = arg1.length
        mem[_59 + 32 len arg1.length] = arg1[all]
        mem[_59 + arg1.length + 32] = 0
        s = idx + 33
        while s < idx + 65:
            require s < arg1.length
            s = s + 1
            continue 
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_85] = arg1.length
        mem[_85 + 32 len arg1.length] = arg1[all]
        mem[_85 + arg1.length + 32] = 0
        s = idx + 65
        while s < idx + 85:
            require s < arg1.length
            s = s + 1
            continue 
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'can't transfer from contract'
        _107 = mem[64]
        mem[64] = mem[64] + 128
        mem[_107] = 0
        mem[_107 + 32] = 0
        mem[_107 + 64] = 0
        mem[_107 + 96] = 2
        mem[0] = 0
        mem[32] = 3
        requests[0].field_0 = 0
        requests[0].field_256 = 0
        requests[0].field_256 = 0
        requests[0].field_512 = 0
        requests[0].field_768 = 2
        idx = idx + 85
        continue 
}



}
