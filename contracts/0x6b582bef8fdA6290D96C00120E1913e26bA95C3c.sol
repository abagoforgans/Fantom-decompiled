contract main {




// =====================  Runtime code  =====================


address owner;
address bearAddress;

function bear() payable {
    return bearAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function drop(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if var34003 >= mem[(32 * idx) + (32 * arg1.length) + 160]:
            idx = idx + 1
            continue 
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
        require ext_code.size(bearAddress)
        staticcall bearAddress.mem[var38003 len 4] with:
                gas gas_remaining wei
               args mem[var38003 + 4 len var38004 - 4]
        mem[var38005] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require idx < arg1.length
            _190 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _214 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 192] = block.difficulty
            mem[(32 * arg1.length) + (32 * arg2.length) + 224] = idx
            mem[(32 * arg1.length) + (32 * arg2.length) + 256] = var44003
            mem[(32 * arg1.length) + (32 * arg2.length) + 288] = address(_190)
            mem[(32 * arg1.length) + (32 * arg2.length) + 308] = _214
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 148
            mem[64] = (32 * arg1.length) + (32 * arg2.length) + 340
            require var44007
            mem[(32 * arg1.length) + (32 * arg2.length) + 344] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 376] = sha3(block.difficulty, idx, var44003, address(_190), _214) % var44007
            require ext_code.size(bearAddress)
            staticcall bearAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, sha3(block.difficulty, idx, var44003, address(_190), _214) % var44007
            mem[(32 * arg1.length) + (32 * arg2.length) + 340] = ext_call.return_data[0]
            s = _190
            t = var44003
            u = var44007
            v = var44008
            while ext_call.success:
                require return_data.size >= 32
                _222 = mem[mem[64]]
                require idx < mem[96]
                _224 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_224)
                mem[mem[64] + 68] = _222
                require ext_code.size(bearAddress)
                call bearAddress.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(_224), _222
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[(32 * arg1.length) + 128]
                if v + 1 >= mem[(32 * idx) + (32 * arg1.length) + 160]:
                    _214 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                    mem[mem[64] + 32] = block.difficulty
                    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = idx + 1
                    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = t
                    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = address(s)
                    mem[(32 * arg1.length) + (32 * arg2.length) + 308] = _214
                    mem[mem[64]] = (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 308
                    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 340
                    require u
                    mem[(32 * arg1.length) + (32 * arg2.length) + 344] = msg.sender
                    mem[(32 * arg1.length) + (32 * arg2.length) + 376] = sha3(block.difficulty, idx, var44003, address(_190), _214) % u
                    require ext_code.size(bearAddress)
                    staticcall bearAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args msg.sender, sha3(block.difficulty, idx, var44003, address(_190), _214) % u
                    mem[(32 * arg1.length) + (32 * arg2.length) + 340] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(bearAddress)
                staticcall bearAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                _234 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg1.length) + 128]
                _214 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 32] = block.difficulty
                mem[(32 * arg1.length) + (32 * arg2.length) + 224] = idx
                mem[(32 * arg1.length) + (32 * arg2.length) + 256] = v + 2
                mem[(32 * arg1.length) + (32 * arg2.length) + 288] = address(_234)
                mem[(32 * arg1.length) + (32 * arg2.length) + 308] = _214
                mem[mem[64]] = (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 308
                mem[64] = (32 * arg1.length) + (32 * arg2.length) + 340
                require ext_call.return_data[0]
                mem[(32 * arg1.length) + (32 * arg2.length) + 344] = msg.sender
                mem[(32 * arg1.length) + (32 * arg2.length) + 376] = sha3(block.difficulty, idx, var44003, address(_190), _214) % ext_call.return_data[0]
                require ext_code.size(bearAddress)
                staticcall bearAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args msg.sender, sha3(block.difficulty, idx, var44003, address(_190), _214) % ext_call.return_data[0]
                mem[(32 * arg1.length) + (32 * arg2.length) + 340] = ext_call.return_data[0]
                s = _234
                t = v + 1
                u = ext_call.return_data[0]
                v = v + 1
                continue 
        revert with ext_call.return_data[0 len return_data.size]
}



}
