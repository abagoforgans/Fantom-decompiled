contract main {




// =====================  Runtime code  =====================


const bentoBox = 0x74c764d41b77dbbb4fe771dab1939b00b146894a

const MIM = 0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a


address owner;
address pendingOwner;
array of address cauldrons;

function cauldrons(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < cauldrons.length
    return cauldrons[arg1]
}

function owner() payable {
    return owner
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0, 'Ownable: caller != pending owner'
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cauldrons.length++
    cauldrons[cauldrons.length] = arg1
}

function transferOwnership(address arg1, bool arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        pendingOwner = arg1
    else:
        if not arg1:
            if not arg3:
                revert with 0, 'Ownable: zero address'
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
        pendingOwner = 0
}

function addPools(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        cauldrons.length++
        mem[0] = 2
        cauldrons[cauldrons.length] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdraw() payable {
    mem[64] = 96
    idx = 0
    while idx < cauldrons.length:
        require ext_code.size(cauldrons[idx])
        call cauldrons[idx].accrue() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= cauldrons.length:
            revert with 0, 50
        mem[0] = 2
        require ext_code.size(cauldrons[idx])
        staticcall cauldrons[idx].accrueInfo() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _42 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_42] == mem[_42 + 24 len 8]
        _44 = mem[_42 + 32]
        require mem[_42 + 32] == mem[_42 + 48 len 16]
        require mem[_42 + 64] == mem[_42 + 88 len 8]
        if idx >= cauldrons.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 4] = 0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a
        mem[mem[64] + 36] = cauldrons[idx]
        require ext_code.size(0x74c764d41b77dbbb4fe771dab1939b00b146894a)
        staticcall 0x74c764d41b77dbbb4fe771dab1939b00b146894a.balanceOf(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a, cauldrons[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _50 = mem[_49]
        mem[mem[64] + 4] = 0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a
        mem[mem[64] + 36] = _50
        mem[mem[64] + 68] = 0
        require ext_code.size(0x74c764d41b77dbbb4fe771dab1939b00b146894a)
        staticcall 0x74c764d41b77dbbb4fe771dab1939b00b146894a.toAmount(address arg1, uint256 arg2, bool arg3) with:
                gas gas_remaining wei
               args 0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a, _50, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _53 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if uint128(_44) > mem[_53]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0x74c764d41b77dbbb4fe771dab1939b00b146894a
            mem[mem[64] + 68] = uint128(_44)
            require ext_code.size(0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a)
            call 0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, 0x74c764d41b77dbbb4fe771dab1939b00b146894a, uint128(_44)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_60] == bool(mem[_60])
            if idx >= cauldrons.length:
                revert with 0, 50
            mem[mem[64] + 36] = 0x74c764d41b77dbbb4fe771dab1939b00b146894a
            mem[mem[64] + 68] = cauldrons[idx]
            mem[mem[64] + 100] = uint128(_44)
            mem[mem[64] + 132] = 0
            require ext_code.size(0x74c764d41b77dbbb4fe771dab1939b00b146894a)
            call 0x74c764d41b77dbbb4fe771dab1939b00b146894a.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a, 0x74c764d41b77dbbb4fe771dab1939b00b146894a, cauldrons[idx], _44 << 128, 0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
        if idx >= cauldrons.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64]] = 0x476343ee00000000000000000000000000000000000000000000000000000000
        require ext_code.size(cauldrons[idx])
        call cauldrons[idx].withdrawFees() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
