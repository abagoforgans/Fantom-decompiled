contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address cacheAddress;

function cache() {
    return cacheAddress
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 2192845056
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 2192845056
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 2192845056
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 2192845056
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function setCache(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 2192845056
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 2192845056
    if not arg1:
        revert with 1187171489
    cacheAddress = arg1
}

function executeCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if this.address == msg.sender:
        mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if ceil32(arg3.length) > arg3.length:
            mem[ceil32(ceil32(arg3.length)) + arg3.length + 97] = 0
        call arg1.mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
    else:
        if owner == msg.sender:
            mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) > arg3.length:
                mem[ceil32(ceil32(arg3.length)) + arg3.length + 97] = 0
            call arg1.mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
        else:
            if not authorityAddress:
                revert with 2192845056
            mem[ceil32(ceil32(arg3.length)) + 101] = msg.sender
            mem[ceil32(ceil32(arg3.length)) + 133] = this.address
            mem[ceil32(ceil32(arg3.length)) + 165] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 2192845056
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len ceil32(arg3.length)] = arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) > arg3.length:
                mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 97] = 0
            call arg1.mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 101 len arg3.length - 4]
    if not ext_call.success:
        revert with 2172083395
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    if this.address == msg.sender:
        if not arg1:
            revert with 1187171489
        mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
        delegate arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    else:
        if owner == msg.sender:
            if not arg1:
                revert with 1187171489
            mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
        else:
            if not authorityAddress:
                revert with 2192845056
            mem[ceil32(ceil32(arg2.length)) + 101] = msg.sender
            mem[ceil32(ceil32(arg2.length)) + 133] = this.address
            mem[ceil32(ceil32(arg2.length)) + 165] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            mem[ceil32(ceil32(arg2.length)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 2192845056
            if not arg1:
                revert with 1187171489
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 97] = 0
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 101 len arg2.length - 4]
    if not delegate.return_code:
        revert with 2172083395
}

function execute(bytes arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[132] = arg1.length
    mem[164 len arg1.length] = arg1[all]
    mem[arg1.length + 164] = 0
    require ext_code.size(cacheAddress)
    staticcall cacheAddress.0x8bf4515c with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        mem[ceil32(return_data.size) + 128 len arg2.length] = arg2[all]
        mem[ceil32(return_data.size) + arg2.length + 128] = 0
        if this.address == msg.sender:
            if not address(ext_call.return_data[0]):
                revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[ceil32(return_data.size) + arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[ceil32(return_data.size) + ceil32(arg2.length) + arg2.length + 128] = 0
            delegate address(ext_call.return_data[0]) with:
               funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + ceil32(arg2.length) + 132 len arg2.length - 4]
            if not return_data.size:
                if not delegate.return_code:
                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
            else:
                if not delegate.return_code:
                    revert with 2172083395
        else:
            if owner == msg.sender:
                if not address(ext_call.return_data[0]):
                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[ceil32(return_data.size) + arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[ceil32(return_data.size) + ceil32(arg2.length) + arg2.length + 128] = 0
                delegate address(ext_call.return_data[0]) with:
                   funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(arg2.length) + 132 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                else:
                    if not delegate.return_code:
                        revert with 2172083395
            else:
                if not authorityAddress:
                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 132] = msg.sender
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 164] = this.address
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 196] = call.func_hash
                require ext_code.size(authorityAddress)
                staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                        gas gas_remaining wei
                       args msg.sender, this.address, call.func_hash
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
                if not 0, ext_call.return_data[4 len 28]:
                    revert with 2192845056
                if not address(ext_call.return_data[0]):
                    revert with 1187171489
                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[ceil32(return_data.size) + arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + arg2.length + 128] = 0
                delegate address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 128 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 132 len arg2.length - 4]
                if not delegate.return_code:
                    revert with 2172083395
    else:
        mem[ceil32(return_data.size) + 100] = 32
        mem[ceil32(return_data.size) + 132] = arg1.length
        mem[ceil32(return_data.size) + 164 len arg1.length] = arg1[all]
        mem[arg1.length + ceil32(return_data.size) + 164] = 0
        require ext_code.size(cacheAddress)
        call cacheAddress.0x7ed0c3b2 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        emit WriteToCache(ext_call.return_data[12 len 20]);
        mem[(2 * ceil32(return_data.size)) + 128 len arg2.length] = arg2[all]
        mem[(2 * ceil32(return_data.size)) + arg2.length + 128] = 0
        if this.address == msg.sender:
            if not address(ext_call.return_data[0]):
                revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
            mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(return_data.size)) + arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + arg2.length + 128] = 0
            delegate address(ext_call.return_data[0]) with:
               funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 132 len arg2.length - 4]
            if not return_data.size:
                if not delegate.return_code:
                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
            else:
                if not delegate.return_code:
                    revert with 2172083395
        else:
            if owner == msg.sender:
                if not address(ext_call.return_data[0]):
                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(return_data.size)) + arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + arg2.length + 128] = 0
                delegate address(ext_call.return_data[0]) with:
                   funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 132 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                else:
                    if not delegate.return_code:
                        revert with 2172083395
            else:
                if not authorityAddress:
                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 164] = this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 196] = call.func_hash
                require ext_code.size(authorityAddress)
                staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                        gas gas_remaining wei
                       args msg.sender, this.address, call.func_hash
                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
                if not 0, ext_call.return_data[4 len 28]:
                    revert with 2192845056
                if not address(ext_call.return_data[0]):
                    revert with 1187171489
                mem[(4 * ceil32(return_data.size)) + ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(return_data.size)) + arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[(4 * ceil32(return_data.size)) + ceil32(arg2.length) + arg2.length + 128] = 0
                delegate address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + ceil32(arg2.length) + 128 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + ceil32(arg2.length) + 132 len arg2.length - 4]
                if not delegate.return_code:
                    revert with 2172083395
    ('bool', 'delegate.return_code')
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x7a9e5e4b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x7a9e5e4b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if msg.sender != this.address:
                    if owner != msg.sender:
                        if not authorityAddress:
                            revert with 2192845056
                        require ext_code.size(authorityAddress)
                        staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                                gas gas_remaining wei
                               args msg.sender, this.address, call.func_hash
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 2192845056
                authorityAddress = address(arg1)
                emit LogSetAuthority(address(arg1));
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x948f5076(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if msg.sender != this.address:
                        if owner != msg.sender:
                            if not authorityAddress:
                                revert with 2192845056
                            require ext_code.size(authorityAddress)
                            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address, call.func_hash
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 2192845056
                    if not address(arg1):
                        revert with 1187171489
                    cacheAddress = address(arg1)
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x9e5d4c49(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xbf7e214f(?????):
                        require not msg.value
                        return authorityAddress
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg3 <= test266151307()
                    require arg3 + 35 < calldata.size
                    if arg3.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = arg3.length
                    require arg3 + arg3.length + 36 <= calldata.size
                    mem[160 len arg3.length] = arg3[all]
                    mem[arg3.length + 160] = 0
                    if this.address == msg.sender:
                        mem[ceil32(ceil32(arg3.length)) + 129 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                        if ceil32(arg3.length) > arg3.length:
                            mem[ceil32(ceil32(arg3.length)) + arg3.length + 129] = 0
                        call address(arg1).mem[ceil32(ceil32(arg3.length)) + 129 len 4] with:
                           value arg2 wei
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg3.length)) + 133 len arg3.length - 4]
                    else:
                        if owner == msg.sender:
                            mem[ceil32(ceil32(arg3.length)) + 129 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if ceil32(arg3.length) > arg3.length:
                                mem[ceil32(ceil32(arg3.length)) + arg3.length + 129] = 0
                            call address(arg1).mem[ceil32(ceil32(arg3.length)) + 129 len 4] with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args mem[ceil32(ceil32(arg3.length)) + 133 len arg3.length - 4]
                        else:
                            if not authorityAddress:
                                revert with 2192845056
                            mem[ceil32(ceil32(arg3.length)) + 133] = msg.sender
                            mem[ceil32(ceil32(arg3.length)) + 165] = this.address
                            mem[ceil32(ceil32(arg3.length)) + 197] = call.func_hash
                            require ext_code.size(authorityAddress)
                            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address, call.func_hash
                            mem[ceil32(ceil32(arg3.length)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 2192845056
                            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129 len ceil32(arg3.length)] = arg3[all], ext_call.return_data[arg3.length + -ceil32(ceil32(arg3.length)) + 31 len ceil32(arg3.length) - arg3.length]
                            if ceil32(arg3.length) > arg3.length:
                                mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 129] = 0
                            call address(arg1).mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129 len 4] with:
                               value arg2 wei
                                 gas gas_remaining wei
                                args mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 133 len arg3.length - 4]
                    if not ext_call.success:
                        revert with 2172083395
        else:
            if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if msg.sender != this.address:
                    if owner != msg.sender:
                        if not authorityAddress:
                            revert with 2192845056
                        require ext_code.size(authorityAddress)
                        staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                                gas gas_remaining wei
                               args msg.sender, this.address, call.func_hash
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 2192845056
                owner = address(arg1)
                emit LogSetOwner(address(arg1));
            else:
                if unknown_0x150b7a02(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg4 <= test266151307()
                    require arg4 + 35 < calldata.size
                    if arg4.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg4.length)) + 129 < 128 or ceil32(ceil32(arg4.length)) + 129 > test266151307():
                        revert with 0, 65
                    require arg4 + arg4.length + 36 <= calldata.size
                    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
                if unknown_0x1cff79cd(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 <= test266151307()
                    require arg2 + 35 < calldata.size
                    if arg2.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = arg2.length
                    require arg2 + arg2.length + 36 <= calldata.size
                    mem[160 len arg2.length] = arg2[all]
                    mem[arg2.length + 160] = 0
                    if this.address == msg.sender:
                        if not address(arg1):
                            revert with 1187171489
                        mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[ceil32(ceil32(arg2.length)) + arg2.length + 129] = 0
                        delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + 129 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg2.length)) + 133 len arg2.length - 4]
                    else:
                        if owner == msg.sender:
                            if not address(arg1):
                                revert with 1187171489
                            mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[ceil32(ceil32(arg2.length)) + arg2.length + 129] = 0
                            delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + 129 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(ceil32(arg2.length)) + 133 len arg2.length - 4]
                        else:
                            if not authorityAddress:
                                revert with 2192845056
                            mem[ceil32(ceil32(arg2.length)) + 133] = msg.sender
                            mem[ceil32(ceil32(arg2.length)) + 165] = this.address
                            mem[ceil32(ceil32(arg2.length)) + 197] = call.func_hash
                            require ext_code.size(authorityAddress)
                            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address, call.func_hash
                            mem[ceil32(ceil32(arg2.length)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 2192845056
                            if not address(arg1):
                                revert with 1187171489
                            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 129 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 129] = 0
                            delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 129 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 133 len arg2.length - 4]
                    if not delegate.return_code:
                        revert with 2172083395
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x1f6a1eb9(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x60c7d295(?????):
                        require not msg.value
                        return cacheAddress
                    require calldata.size - 4 >= 64
                    require arg1 <= test266151307()
                    require arg1 + 35 < calldata.size
                    require arg1.length <= test266151307()
                    require arg1 + arg1.length + 36 <= calldata.size
                    require arg2 <= test266151307()
                    require arg2 + 35 < calldata.size
                    require arg2.length <= test266151307()
                    require arg2 + arg2.length + 36 <= calldata.size
                    mem[164] = arg1.length
                    mem[196 len arg1.length] = arg1[all]
                    mem[arg1.length + 196] = 0
                    require ext_code.size(cacheAddress)
                    staticcall cacheAddress.0x8bf4515c with:
                            gas gas_remaining wei
                           args Array(len=arg1.length, data=arg1[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160 len arg2.length] = arg2[all]
                        mem[ceil32(return_data.size) + arg2.length + 160] = 0
                        if this.address == msg.sender:
                            if not address(ext_call.return_data[0]):
                                revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                            mem[ceil32(return_data.size) + ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[ceil32(return_data.size) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[ceil32(return_data.size) + ceil32(arg2.length) + arg2.length + 160] = 0
                            delegate address(ext_call.return_data[0]) with:
                               funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                                 gas gas_remaining wei
                                args mem[ceil32(return_data.size) + ceil32(arg2.length) + 164 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                            else:
                                if not delegate.return_code:
                                    revert with 2172083395
                        else:
                            if owner == msg.sender:
                                if not address(ext_call.return_data[0]):
                                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                                mem[ceil32(return_data.size) + ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[ceil32(return_data.size) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[ceil32(return_data.size) + ceil32(arg2.length) + arg2.length + 160] = 0
                                delegate address(ext_call.return_data[0]) with:
                                   funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                                     gas gas_remaining wei
                                    args mem[ceil32(return_data.size) + ceil32(arg2.length) + 164 len arg2.length - 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                                else:
                                    if not delegate.return_code:
                                        revert with 2172083395
                            else:
                                if not authorityAddress:
                                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                                mem[ceil32(return_data.size) + ceil32(arg2.length) + 164] = msg.sender
                                mem[ceil32(return_data.size) + ceil32(arg2.length) + 196] = this.address
                                mem[ceil32(return_data.size) + ceil32(arg2.length) + 228] = call.func_hash
                                require ext_code.size(authorityAddress)
                                staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                                        gas gas_remaining wei
                                       args msg.sender, this.address, call.func_hash
                                mem[ceil32(return_data.size) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
                                if not 0, ext_call.return_data[4 len 28]:
                                    revert with 2192845056
                                if not address(ext_call.return_data[0]):
                                    revert with 1187171489
                                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[ceil32(return_data.size) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + arg2.length + 160] = 0
                                delegate address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 160 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 164 len arg2.length - 4]
                                if not delegate.return_code:
                                    revert with 2172083395
                    else:
                        mem[ceil32(return_data.size) + 132] = 32
                        mem[ceil32(return_data.size) + 164] = arg1.length
                        mem[ceil32(return_data.size) + 196 len arg1.length] = arg1[all]
                        mem[arg1.length + ceil32(return_data.size) + 196] = 0
                        require ext_code.size(cacheAddress)
                        call cacheAddress.0x7ed0c3b2 with:
                             gas gas_remaining wei
                            args Array(len=arg1.length, data=arg1[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        emit WriteToCache(ext_call.return_data[12 len 20]);
                        mem[(2 * ceil32(return_data.size)) + 160 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(return_data.size)) + arg2.length + 160] = 0
                        if this.address == msg.sender:
                            if not address(ext_call.return_data[0]):
                                revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                            mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(return_data.size)) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + arg2.length + 160] = 0
                            delegate address(ext_call.return_data[0]) with:
                               funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 164 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                            else:
                                if not delegate.return_code:
                                    revert with 2172083395
                        else:
                            if owner == msg.sender:
                                if not address(ext_call.return_data[0]):
                                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(return_data.size)) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + arg2.length + 160] = 0
                                delegate address(ext_call.return_data[0]) with:
                                   funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 164 len arg2.length - 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                                else:
                                    if not delegate.return_code:
                                        revert with 2172083395
                            else:
                                if not authorityAddress:
                                    revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
                                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 164] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 196] = this.address
                                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 228] = call.func_hash
                                require ext_code.size(authorityAddress)
                                staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                                        gas gas_remaining wei
                                       args msg.sender, this.address, call.func_hash
                                mem[(2 * ceil32(return_data.size)) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
                                if not 0, ext_call.return_data[4 len 28]:
                                    revert with 2192845056
                                if not address(ext_call.return_data[0]):
                                    revert with 1187171489
                                mem[(4 * ceil32(return_data.size)) + ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(return_data.size)) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(arg2.length) + arg2.length + 160] = 0
                                delegate address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + ceil32(arg2.length) + 160 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + ceil32(arg2.length) + 164 len arg2.length - 4]
                                if not delegate.return_code:
                                    revert with 2172083395
                ('bool', 'delegate.return_code')
}



}
