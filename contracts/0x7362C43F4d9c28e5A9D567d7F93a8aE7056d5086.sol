contract main {




// =====================  Runtime code  =====================


#
#  - sub_2109214f(?)
#
address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Zero balance!'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_43b78263(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] == address(cd[68])
    require cd[132] == address(cd[132])
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require (32 * ('cd', 196).length) + 128 >= 96 and (32 * ('cd', 196).length) + 128 <= test266151307()
    mem[96] = ('cd', 196).length
    require calldata.size >= cd[196] + (32 * ('cd', 196).length) + 36
    idx = 0
    s = cd[196] + 36
    t = 128
    while idx < ('cd', 196).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[(32 * ('cd', 196).length) + 132] = address(cd[68])
    mem[(32 * ('cd', 196).length) + 164] = address(cd[132])
    if cd[4] == 1:
        require ext_code.size(stor1)
        staticcall stor1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[68]), address(cd[132])
        mem[(32 * ('cd', 196).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(ext_call.return_data[12 len 20])
        staticcall ext_call.return_data[12 len 20].token0() with:
                gas gas_remaining wei
        mem[(32 * ('cd', 196).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 160] = cd[36]
        mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 192] = 64
        mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 224] = ('cd', 196).length
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < ('cd', 196).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if address(cd[68]) != ext_call.return_data[12 len 20]:
            _222 = mem[64]
            mem[64] = (64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 260] = cd[164]
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 292] = cd[100]
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 324] = this.address
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 356] = 128
            _238 = mem[_222]
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388] = mem[_222]
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 420 len ceil32(_238)] = mem[_222 + 32 len ceil32(_238)]
            if ceil32(_238) > _238:
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + _238 + 420] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[164], cd[100], address(this.address), 128, mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388 len ceil32(_238) + 32]
        else:
            _224 = mem[64]
            mem[64] = (64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 260] = cd[100]
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 292] = cd[164]
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 324] = this.address
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 356] = 128
            _239 = mem[_224]
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388] = mem[_224]
            mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 420 len ceil32(_239)] = mem[_224 + 32 len ceil32(_239)]
            if ceil32(_239) > _239:
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + _239 + 420] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[100], cd[164], address(this.address), 128, mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388 len ceil32(_239) + 32]
    else:
        if cd[4] != 2:
            require ext_code.size(stor3)
            staticcall stor3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[132])
            mem[(32 * ('cd', 196).length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(ext_call.return_data[12 len 20])
            staticcall ext_call.return_data[12 len 20].token0() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 196).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 160] = cd[36]
            mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 192] = 64
            mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 224] = ('cd', 196).length
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < ('cd', 196).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if address(cd[68]) != ext_call.return_data[12 len 20]:
                _226 = mem[64]
                mem[64] = (64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 260] = cd[164]
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 292] = cd[100]
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 324] = this.address
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 356] = 128
                _240 = mem[_226]
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388] = mem[_226]
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 420 len ceil32(_240)] = mem[_226 + 32 len ceil32(_240)]
                if ceil32(_240) > _240:
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + _240 + 420] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[164], cd[100], address(this.address), 128, mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388 len ceil32(_240) + 32]
            else:
                _228 = mem[64]
                mem[64] = (64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 260] = cd[100]
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 292] = cd[164]
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 324] = this.address
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 356] = 128
                _241 = mem[_228]
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388] = mem[_228]
                mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 420 len ceil32(_241)] = mem[_228 + 32 len ceil32(_241)]
                if ceil32(_241) > _241:
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + _241 + 420] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[100], cd[164], address(this.address), 128, mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388 len ceil32(_241) + 32]
        else:
            if cd[4] == 1:
                require ext_code.size(stor1)
                staticcall stor1.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[68]), address(cd[132])
                mem[(32 * ('cd', 196).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(ext_call.return_data[12 len 20])
                staticcall ext_call.return_data[12 len 20].token0() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 196).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 160] = cd[36]
                mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 192] = 64
                mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 224] = ('cd', 196).length
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < ('cd', 196).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if address(cd[68]) != ext_call.return_data[12 len 20]:
                    _230 = mem[64]
                    mem[64] = (64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 260] = cd[164]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 292] = cd[100]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 324] = this.address
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 356] = 128
                    _242 = mem[_230]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388] = mem[_230]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 420 len ceil32(_242)] = mem[_230 + 32 len ceil32(_242)]
                    if ceil32(_242) > _242:
                        mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + _242 + 420] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[164], cd[100], address(this.address), 128, mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388 len ceil32(_242) + 32]
                else:
                    _232 = mem[64]
                    mem[64] = (64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 260] = cd[100]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 292] = cd[164]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 324] = this.address
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 356] = 128
                    _243 = mem[_232]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388] = mem[_232]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 420 len ceil32(_243)] = mem[_232 + 32 len ceil32(_243)]
                    if ceil32(_243) > _243:
                        mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + _243 + 420] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[100], cd[164], address(this.address), 128, mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388 len ceil32(_243) + 32]
            else:
                require ext_code.size(stor2)
                staticcall stor2.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[68]), address(cd[132])
                mem[(32 * ('cd', 196).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(ext_call.return_data[12 len 20])
                staticcall ext_call.return_data[12 len 20].token0() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 196).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 160] = cd[36]
                mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 192] = 64
                mem[(32 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 224] = ('cd', 196).length
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < ('cd', 196).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if address(cd[68]) != ext_call.return_data[12 len 20]:
                    _234 = mem[64]
                    mem[64] = (64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 260] = cd[164]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 292] = cd[100]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 324] = this.address
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 356] = 128
                    _244 = mem[_234]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388] = mem[_234]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 420 len ceil32(_244)] = mem[_234 + 32 len ceil32(_244)]
                    if ceil32(_244) > _244:
                        mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + _244 + 420] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[164], cd[100], address(this.address), 128, mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388 len ceil32(_244) + 32]
                else:
                    _236 = mem[64]
                    mem[64] = (64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 260] = cd[100]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 292] = cd[164]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 324] = this.address
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 356] = 128
                    _245 = mem[_236]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388] = mem[_236]
                    mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 420 len ceil32(_245)] = mem[_236 + 32 len ceil32(_245)]
                    if ceil32(_245) > _245:
                        mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + _245 + 420] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[100], cd[164], address(this.address), 128, mem[(64 * ('cd', 196).length) + (2 * ceil32(return_data.size)) + 388 len ceil32(_245) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_986ebcca(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg4)
    mem[192] = 3
    mem[224 len 96] = call.data[calldata.size len 96]
    if not arg1:
        if not Mask(1, 1, arg1):
            if not Mask(1, 2, arg1):
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[324] = arg3
            mem[356] = 64
            mem[388] = 2
            idx = 0
            s = 128
            t = 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[420 len 64])
            if not ext_call.success:
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _569 = mem[320 len 4], Mask(224, 32, arg3) >> 32
            require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
            _574 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
            require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require return_data.size >= _569 + (32 * _574) + 32
            mem[ceil32(return_data.size) + 352 len 32 * _574] = mem[_569 + 352 len 32 * _574]
            require _574 - 1 < _574
            mem[288] = mem[(32 * _574 - 1) + ceil32(return_data.size) + 352]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = arg3
        mem[356] = 64
        mem[388] = 2
        idx = 0
        s = 128
        t = 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[420 len 64])
        if not ext_call.success:
            if not return_data.size:
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = arg3
                mem[356] = 64
                mem[388] = 2
                idx = 0
                s = 128
                t = 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[420 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1145 = mem[320 len 4], Mask(224, 32, arg3) >> 32
                require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
                _1159 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require return_data.size >= _1145 + (32 * _1159) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _1159] = mem[_1145 + 352 len 32 * _1159]
                require _1159 - 1 < _1159
                mem[288] = mem[(32 * _1159 - 1) + ceil32(return_data.size) + 352]
            else:
                mem[320] = return_data.size
                mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 325] = arg3
                mem[ceil32(return_data.size) + 357] = 64
                mem[ceil32(return_data.size) + 389] = 2
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 421
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
                require return_data.size >= 32
                _1147 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
                _1160 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1160
                require return_data.size >= _1147 + (32 * _1160) + 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1160] = mem[ceil32(return_data.size) + _1147 + 353 len 32 * _1160]
                require _1160 - 1 < _1160
                mem[288] = mem[(32 * _1160 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _571 = mem[320 len 4], Mask(224, 32, arg3) >> 32
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
        _575 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
        require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        require return_data.size >= _571 + (32 * _575) + 32
        mem[ceil32(return_data.size) + 352 len 32 * _575] = mem[_571 + 352 len 32 * _575]
        require _575 - 1 < _575
        mem[256] = mem[(32 * _575 - 1) + ceil32(return_data.size) + 352]
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size], mem[256], call.data[calldata.size + 64]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _1730 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1730] = mem[224 len 32 * _1730]
                return 32, mem[mem[64] + 32 len (32 * _1730) + 32]
            _1675 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1675] = return_data.size
            mem[_1675 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _1731 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1731] = mem[224 len 32 * _1731]
            return 32, mem[mem[64] + 32 len (32 * _1731) + 32]
        _1660 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1676 = mem[_1660]
        require mem[_1660] <= test266151307()
        require _1660 + return_data.size > _1660 + mem[_1660] + 31
        _1695 = mem[_1660 + mem[_1660]]
        require mem[_1660 + mem[_1660]] <= test266151307()
        require (32 * mem[_1660 + mem[_1660]]) + 32 >= 0 and _1660 + ceil32(return_data.size) + (32 * mem[_1660 + mem[_1660]]) + 32 <= test266151307()
        mem[64] = _1660 + ceil32(return_data.size) + (32 * mem[_1660 + mem[_1660]]) + 32
        mem[_1660 + ceil32(return_data.size)] = _1695
        require return_data.size >= _1676 + (32 * _1695) + 32
        mem[_1660 + ceil32(return_data.size) + 32 len 32 * _1695] = mem[_1660 + _1676 + 32 len 32 * _1695]
        require _1695 - 1 < _1695
        require 2 < mem[192]
        mem[288] = mem[(32 * _1695 - 1) + _1660 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2083 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2083] = mem[224 len 32 * _2083]
        return 32, mem[mem[64] + 32 len (32 * _2083) + 32]
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = arg3
    mem[356] = 64
    mem[388] = 2
    idx = 0
    s = 128
    t = 420
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[420 len 64])
    if not ext_call.success:
        if not return_data.size:
            if not Mask(1, 1, arg1):
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = arg3
                mem[356] = 64
                mem[388] = 2
                idx = 0
                s = 128
                t = 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[420 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1149 = mem[320 len 4], Mask(224, 32, arg3) >> 32
                require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
                _1162 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require return_data.size >= _1149 + (32 * _1162) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _1162] = mem[_1149 + 352 len 32 * _1162]
                require _1162 - 1 < _1162
                mem[288] = mem[(32 * _1162 - 1) + ceil32(return_data.size) + 352]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[324] = arg3
            mem[356] = 64
            mem[388] = 2
            idx = 0
            s = 128
            t = 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[420 len 64])
            if not ext_call.success:
                if not return_data.size:
                    if not Mask(1, 2, arg1):
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[324] = arg3
                    mem[356] = 64
                    mem[388] = 2
                    idx = 0
                    s = 128
                    t = 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[420 len 64])
                    if not ext_call.success:
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _1678 = mem[320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
                    _1696 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                    require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                    mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    require return_data.size >= _1678 + (32 * _1696) + 32
                    mem[ceil32(return_data.size) + 352 len 32 * _1696] = mem[_1678 + 352 len 32 * _1696]
                    require _1696 - 1 < _1696
                    mem[288] = mem[(32 * _1696 - 1) + ceil32(return_data.size) + 352]
                else:
                    mem[320] = return_data.size
                    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not Mask(1, 2, arg1):
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 325] = arg3
                    mem[ceil32(return_data.size) + 357] = 64
                    mem[ceil32(return_data.size) + 389] = 2
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 421
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
                    if not ext_call.success:
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
                    require return_data.size >= 32
                    _1680 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
                    _1697 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1697
                    require return_data.size >= _1680 + (32 * _1697) + 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1697] = mem[ceil32(return_data.size) + _1680 + 353 len 32 * _1697]
                    require _1697 - 1 < _1697
                    mem[288] = mem[(32 * _1697 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _1151 = mem[320 len 4], Mask(224, 32, arg3) >> 32
            require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
            _1163 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
            require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require return_data.size >= _1151 + (32 * _1163) + 32
            mem[ceil32(return_data.size) + 352 len 32 * _1163] = mem[_1151 + 352 len 32 * _1163]
            require _1163 - 1 < _1163
            mem[256] = mem[(32 * _1163 - 1) + ceil32(return_data.size) + 352]
            if not Mask(1, 2, arg1):
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size], mem[256], call.data[calldata.size + 64]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 2
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
            if not ext_call.success:
                if not return_data.size:
                    mem[mem[64]] = 32
                    _2102 = mem[192]
                    mem[mem[64] + 32] = mem[192]
                    mem[mem[64] + 64 len 32 * _2102] = mem[224 len 32 * _2102]
                    return 32, mem[mem[64] + 32 len (32 * _2102) + 32]
                _2063 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2063] = return_data.size
                mem[_2063 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 32
                _2103 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2103] = mem[224 len 32 * _2103]
                return 32, mem[mem[64] + 32 len (32 * _2103) + 32]
            _2051 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2064 = mem[_2051]
            require mem[_2051] <= test266151307()
            require _2051 + return_data.size > _2051 + mem[_2051] + 31
            _2078 = mem[_2051 + mem[_2051]]
            require mem[_2051 + mem[_2051]] <= test266151307()
            require (32 * mem[_2051 + mem[_2051]]) + 32 >= 0 and _2051 + ceil32(return_data.size) + (32 * mem[_2051 + mem[_2051]]) + 32 <= test266151307()
            mem[64] = _2051 + ceil32(return_data.size) + (32 * mem[_2051 + mem[_2051]]) + 32
            mem[_2051 + ceil32(return_data.size)] = _2078
            require return_data.size >= _2064 + (32 * _2078) + 32
            mem[_2051 + ceil32(return_data.size) + 32 len 32 * _2078] = mem[_2051 + _2064 + 32 len 32 * _2078]
            require _2078 - 1 < _2078
            require 2 < mem[192]
            mem[288] = mem[(32 * _2078 - 1) + _2051 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 32
            _2261 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2261] = mem[224 len 32 * _2261]
            return 32, mem[mem[64] + 32 len (32 * _2261) + 32]
        mem[320] = return_data.size
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not Mask(1, 1, arg1):
            if not Mask(1, 2, arg1):
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 325] = arg3
            mem[ceil32(return_data.size) + 357] = 64
            mem[ceil32(return_data.size) + 389] = 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 421
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
            if not ext_call.success:
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
            require return_data.size >= 32
            _1153 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
            _1164 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1164
            require return_data.size >= _1153 + (32 * _1164) + 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1164] = mem[ceil32(return_data.size) + _1153 + 353 len 32 * _1164]
            require _1164 - 1 < _1164
            mem[288] = mem[(32 * _1164 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 325] = arg3
        mem[ceil32(return_data.size) + 357] = 64
        mem[ceil32(return_data.size) + 389] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 421
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
        if not ext_call.success:
            if not return_data.size:
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 325] = arg3
                mem[ceil32(return_data.size) + 357] = 64
                mem[ceil32(return_data.size) + 389] = 2
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 421
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
                require return_data.size >= 32
                _1682 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
                _1699 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1699
                require return_data.size >= _1682 + (32 * _1699) + 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1699] = mem[ceil32(return_data.size) + _1682 + 353 len 32 * _1699]
                require _1699 - 1 < _1699
                mem[288] = mem[(32 * _1699 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
            else:
                mem[ceil32(return_data.size) + 321] = return_data.size
                mem[ceil32(return_data.size) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[(2 * ceil32(return_data.size)) + 322] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 326] = arg3
                mem[(2 * ceil32(return_data.size)) + 358] = 64
                mem[(2 * ceil32(return_data.size)) + 390] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + 422
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 422 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[(2 * ceil32(return_data.size)) + 322 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 322
                require return_data.size >= 32
                _1684 = mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32
                require mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 322 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 353
                _1700 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 354 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 354
                mem[(4 * ceil32(return_data.size)) + 322] = _1700
                require return_data.size >= _1684 + (32 * _1700) + 32
                mem[(4 * ceil32(return_data.size)) + 354 len 32 * _1700] = mem[(2 * ceil32(return_data.size)) + _1684 + 354 len 32 * _1700]
                require _1700 - 1 < _1700
                mem[288] = mem[(32 * _1700 - 1) + (4 * ceil32(return_data.size)) + 354]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
        require return_data.size >= 32
        _1155 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
        _1165 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1165
        require return_data.size >= _1155 + (32 * _1165) + 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1165] = mem[ceil32(return_data.size) + _1155 + 353 len 32 * _1165]
        require _1165 - 1 < _1165
        mem[256] = mem[(32 * _1165 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size], mem[256], call.data[calldata.size + 64]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _2106 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2106] = mem[224 len 32 * _2106]
                return 32, mem[mem[64] + 32 len (32 * _2106) + 32]
            _2065 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2065] = return_data.size
            mem[_2065 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _2107 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2107] = mem[224 len 32 * _2107]
            return 32, mem[mem[64] + 32 len (32 * _2107) + 32]
        _2056 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2066 = mem[_2056]
        require mem[_2056] <= test266151307()
        require _2056 + return_data.size > _2056 + mem[_2056] + 31
        _2079 = mem[_2056 + mem[_2056]]
        require mem[_2056 + mem[_2056]] <= test266151307()
        require (32 * mem[_2056 + mem[_2056]]) + 32 >= 0 and _2056 + ceil32(return_data.size) + (32 * mem[_2056 + mem[_2056]]) + 32 <= test266151307()
        mem[64] = _2056 + ceil32(return_data.size) + (32 * mem[_2056 + mem[_2056]]) + 32
        mem[_2056 + ceil32(return_data.size)] = _2079
        require return_data.size >= _2066 + (32 * _2079) + 32
        mem[_2056 + ceil32(return_data.size) + 32 len 32 * _2079] = mem[_2056 + _2066 + 32 len 32 * _2079]
        require _2079 - 1 < _2079
        require 2 < mem[192]
        mem[288] = mem[(32 * _2079 - 1) + _2056 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2262 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2262] = mem[224 len 32 * _2262]
        return 32, mem[mem[64] + 32 len (32 * _2262) + 32]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _573 = mem[320 len 4], Mask(224, 32, arg3) >> 32
    require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
    _576 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
    require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
    require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
    require return_data.size >= _573 + (32 * _576) + 32
    mem[ceil32(return_data.size) + 352 len 32 * _576] = mem[_573 + 352 len 32 * _576]
    require _576 - 1 < _576
    mem[224] = mem[(32 * _576 - 1) + ceil32(return_data.size) + 352]
    if not Mask(1, 1, arg1):
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = mem[224], call.data[calldata.size + 32 len 64]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _1744 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1744] = mem[224 len 32 * _1744]
                return 32, mem[mem[64] + 32 len (32 * _1744) + 32]
            _1685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1685] = return_data.size
            mem[_1685 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _1745 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1745] = mem[224 len 32 * _1745]
            return 32, mem[mem[64] + 32 len (32 * _1745) + 32]
        _1673 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1686 = mem[_1673]
        require mem[_1673] <= test266151307()
        require _1673 + return_data.size > _1673 + mem[_1673] + 31
        _1702 = mem[_1673 + mem[_1673]]
        require mem[_1673 + mem[_1673]] <= test266151307()
        require (32 * mem[_1673 + mem[_1673]]) + 32 >= 0 and _1673 + ceil32(return_data.size) + (32 * mem[_1673 + mem[_1673]]) + 32 <= test266151307()
        mem[64] = _1673 + ceil32(return_data.size) + (32 * mem[_1673 + mem[_1673]]) + 32
        mem[_1673 + ceil32(return_data.size)] = _1702
        require return_data.size >= _1686 + (32 * _1702) + 32
        mem[_1673 + ceil32(return_data.size) + 32 len 32 * _1702] = mem[_1673 + _1686 + 32 len 32 * _1702]
        require _1702 - 1 < _1702
        require 2 < mem[192]
        mem[288] = mem[(32 * _1702 - 1) + _1673 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2092 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2092] = mem[224 len 32 * _2092]
        return 32, mem[mem[64] + 32 len (32 * _2092) + 32]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor5)
    staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        if not return_data.size:
            if not Mask(1, 2, arg1):
                mem[mem[64]] = 32
                _1756 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1756] = mem[224 len 32 * _1756]
                return 32, mem[mem[64] + 32 len (32 * _1756) + 32]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 2
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
            if not ext_call.success:
                if not return_data.size:
                    mem[mem[64]] = 32
                    _2109 = mem[192]
                    mem[mem[64] + 32] = mem[192]
                    mem[mem[64] + 64 len 32 * _2109] = mem[224 len 32 * _2109]
                    return 32, mem[mem[64] + 32 len (32 * _2109) + 32]
                _2067 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2067] = return_data.size
                mem[_2067 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 32
                _2110 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2110] = mem[224 len 32 * _2110]
                return 32, mem[mem[64] + 32 len (32 * _2110) + 32]
            _2059 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2068 = mem[_2059]
            require mem[_2059] <= test266151307()
            require _2059 + return_data.size > _2059 + mem[_2059] + 31
            _2080 = mem[_2059 + mem[_2059]]
            require mem[_2059 + mem[_2059]] <= test266151307()
            require (32 * mem[_2059 + mem[_2059]]) + 32 >= 0 and _2059 + ceil32(return_data.size) + (32 * mem[_2059 + mem[_2059]]) + 32 <= test266151307()
            mem[64] = _2059 + ceil32(return_data.size) + (32 * mem[_2059 + mem[_2059]]) + 32
            mem[_2059 + ceil32(return_data.size)] = _2080
            require return_data.size >= _2068 + (32 * _2080) + 32
            mem[_2059 + ceil32(return_data.size) + 32 len 32 * _2080] = mem[_2059 + _2068 + 32 len 32 * _2080]
            require _2080 - 1 < _2080
            require 2 < mem[192]
            mem[288] = mem[(32 * _2080 - 1) + _2059 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 32
            _2263 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2263] = mem[224 len 32 * _2263]
            return 32, mem[mem[64] + 32 len (32 * _2263) + 32]
        _1687 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1687] = return_data.size
        mem[_1687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            _1757 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1757] = mem[224 len 32 * _1757]
            return 32, mem[mem[64] + 32 len (32 * _1757) + 32]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len 160]
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _2111 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2111] = mem[224 len 32 * _2111]
                return 32, mem[mem[64] + 32 len (32 * _2111) + 32]
            _2069 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2069] = return_data.size
            mem[_2069 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _2112 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2112] = mem[224 len 32 * _2112]
            return 32, mem[mem[64] + 32 len (32 * _2112) + 32]
        _2060 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2070 = mem[_2060]
        require mem[_2060] <= test266151307()
        require _2060 + return_data.size > _2060 + mem[_2060] + 31
        _2081 = mem[_2060 + mem[_2060]]
        require mem[_2060 + mem[_2060]] <= test266151307()
        require (32 * mem[_2060 + mem[_2060]]) + 32 >= 0 and _2060 + ceil32(return_data.size) + (32 * mem[_2060 + mem[_2060]]) + 32 <= test266151307()
        mem[64] = _2060 + ceil32(return_data.size) + (32 * mem[_2060 + mem[_2060]]) + 32
        mem[_2060 + ceil32(return_data.size)] = _2081
        require return_data.size >= _2070 + (32 * _2081) + 32
        mem[_2060 + ceil32(return_data.size) + 32 len 32 * _2081] = mem[_2060 + _2070 + 32 len 32 * _2081]
        require _2081 - 1 < _2081
        require 2 < mem[192]
        mem[288] = mem[(32 * _2081 - 1) + _2060 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2264 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2264] = mem[224 len 32 * _2264]
        return 32, mem[mem[64] + 32 len (32 * _2264) + 32]
    _1674 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1688 = mem[_1674]
    require mem[_1674] <= test266151307()
    require _1674 + return_data.size > _1674 + mem[_1674] + 31
    _1703 = mem[_1674 + mem[_1674]]
    require mem[_1674 + mem[_1674]] <= test266151307()
    require (32 * mem[_1674 + mem[_1674]]) + 32 >= 0 and _1674 + ceil32(return_data.size) + (32 * mem[_1674 + mem[_1674]]) + 32 <= test266151307()
    mem[64] = _1674 + ceil32(return_data.size) + (32 * mem[_1674 + mem[_1674]]) + 32
    mem[_1674 + ceil32(return_data.size)] = _1703
    require return_data.size >= _1688 + (32 * _1703) + 32
    mem[_1674 + ceil32(return_data.size) + 32 len 32 * _1703] = mem[_1674 + _1688 + 32 len 32 * _1703]
    require _1703 - 1 < _1703
    require 1 < mem[192]
    mem[256] = mem[(32 * _1703 - 1) + _1674 + ceil32(return_data.size) + 32]
    if not Mask(1, 2, arg1):
        mem[mem[64]] = 32
        _2098 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2098] = mem[224 len 32 * _2098]
        return 32, mem[mem[64] + 32 len (32 * _2098) + 32]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor6)
    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        if not return_data.size:
            mem[mem[64]] = 32
            _2271 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2271] = mem[224 len 32 * _2271]
            return 32, mem[mem[64] + 32 len (32 * _2271) + 32]
        _2254 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_2254] = return_data.size
        mem[_2254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 32
        _2272 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2272] = mem[224 len 32 * _2272]
        return 32, mem[mem[64] + 32 len (32 * _2272) + 32]
    _2253 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2255 = mem[_2253]
    require mem[_2253] <= test266151307()
    require _2253 + return_data.size > _2253 + mem[_2253] + 31
    _2260 = mem[_2253 + mem[_2253]]
    require mem[_2253 + mem[_2253]] <= test266151307()
    require (32 * mem[_2253 + mem[_2253]]) + 32 >= 0 and _2253 + ceil32(return_data.size) + (32 * mem[_2253 + mem[_2253]]) + 32 <= test266151307()
    mem[64] = _2253 + ceil32(return_data.size) + (32 * mem[_2253 + mem[_2253]]) + 32
    mem[_2253 + ceil32(return_data.size)] = _2260
    require return_data.size >= _2255 + (32 * _2260) + 32
    mem[_2253 + ceil32(return_data.size) + 32 len 32 * _2260] = mem[_2253 + _2255 + 32 len 32 * _2260]
    require _2260 - 1 < _2260
    require 2 < mem[192]
    mem[288] = mem[(32 * _2260 - 1) + _2253 + ceil32(return_data.size) + 32]
    mem[mem[64]] = 32
    _2309 = mem[192]
    mem[mem[64] + 32] = mem[192]
    mem[mem[64] + 64 len 32 * _2309] = mem[224 len 32 * _2309]
    return 32, mem[mem[64] + 32 len (32 * _2309) + 32]
}

function sub_095c414e(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Invalid input'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    if ('cd', 100).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _720 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_720]
            mem[_720 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            require 1 < mem[_720]
            mem[_720 + 64] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_720 + 96] = 3
            mem[64] = _720 + 224
            mem[_720 + 128 len 96] = call.data[calldata.size len 96]
            if not bool(cd[((32 * idx) + cd[4] + 36)]):
                if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                        mem[_720 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_720 + 228] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_720 + 260] = 64
                        mem[_720 + 292] = mem[_720]
                        s = 0
                        t = _720 + 32
                        u = _720 + 324
                        while s < mem[_720]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _720 + (32 * mem[_720]) + -mem[64] + 320]
                        if not ext_call.success:
                            if return_data.size:
                                _1424 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1424] = return_data.size
                                mem[_1424 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1418 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1425 = mem[_1418]
                            require mem[_1418] <= test266151307()
                            require _1418 + return_data.size > _1418 + mem[_1418] + 31
                            _1431 = mem[_1418 + mem[_1418]]
                            require mem[_1418 + mem[_1418]] <= test266151307()
                            require (32 * mem[_1418 + mem[_1418]]) + 32 >= 0 and _1418 + ceil32(return_data.size) + (32 * mem[_1418 + mem[_1418]]) + 32 <= test266151307()
                            mem[64] = _1418 + ceil32(return_data.size) + (32 * mem[_1418 + mem[_1418]]) + 32
                            mem[_1418 + ceil32(return_data.size)] = _1431
                            require return_data.size >= _1425 + (32 * _1431) + 32
                            t = _1418 + _1425 + 32
                            u = _1418 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1431:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _1431
                            require 2 < mem[_720 + 96]
                            mem[_720 + 192] = mem[_1418 + ceil32(return_data.size) + 32]
                else:
                    mem[_720 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_720 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_720 + 260] = 64
                    mem[_720 + 292] = mem[_720]
                    s = 0
                    t = _720 + 32
                    u = _720 + 324
                    while s < mem[_720]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _720 + (32 * mem[_720]) + -mem[64] + 320]
                    if not ext_call.success:
                        if not return_data.size:
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1444 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = _720 + 32
                                u = mem[64] + 100
                                while s < _1444:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1444) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2133 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2133] = return_data.size
                                        mem[_2133 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2120 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2134 = mem[_2120]
                                    require mem[_2120] <= test266151307()
                                    require _2120 + return_data.size > _2120 + mem[_2120] + 31
                                    _2154 = mem[_2120 + mem[_2120]]
                                    require mem[_2120 + mem[_2120]] <= test266151307()
                                    require (32 * mem[_2120 + mem[_2120]]) + 32 >= 0 and _2120 + ceil32(return_data.size) + (32 * mem[_2120 + mem[_2120]]) + 32 <= test266151307()
                                    mem[64] = _2120 + ceil32(return_data.size) + (32 * mem[_2120 + mem[_2120]]) + 32
                                    mem[_2120 + ceil32(return_data.size)] = _2154
                                    require return_data.size >= _2134 + (32 * _2154) + 32
                                    t = _2120 + _2134 + 32
                                    u = _2120 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2154:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2154
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2120 + ceil32(return_data.size) + 32]
                        else:
                            _1426 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1426] = return_data.size
                            mem[_1426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1437 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1445 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = _720 + 32
                                u = mem[64] + 100
                                while s < _1445:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1437 + (32 * _1445) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2135 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2135] = return_data.size
                                        mem[_2135 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2121 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2136 = mem[_2121]
                                    require mem[_2121] <= test266151307()
                                    require _2121 + return_data.size > _2121 + mem[_2121] + 31
                                    _2155 = mem[_2121 + mem[_2121]]
                                    require mem[_2121 + mem[_2121]] <= test266151307()
                                    require (32 * mem[_2121 + mem[_2121]]) + 32 >= 0 and _2121 + ceil32(return_data.size) + (32 * mem[_2121 + mem[_2121]]) + 32 <= test266151307()
                                    mem[64] = _2121 + ceil32(return_data.size) + (32 * mem[_2121 + mem[_2121]]) + 32
                                    mem[_2121 + ceil32(return_data.size)] = _2155
                                    require return_data.size >= _2136 + (32 * _2155) + 32
                                    t = _2121 + _2136 + 32
                                    u = _2121 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2155:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2155
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2121 + ceil32(return_data.size) + 32]
                    else:
                        _1419 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1427 = mem[_1419]
                        require mem[_1419] <= test266151307()
                        require _1419 + return_data.size > _1419 + mem[_1419] + 31
                        _1432 = mem[_1419 + mem[_1419]]
                        require mem[_1419 + mem[_1419]] <= test266151307()
                        require (32 * mem[_1419 + mem[_1419]]) + 32 >= 0 and _1419 + ceil32(return_data.size) + (32 * mem[_1419 + mem[_1419]]) + 32 <= test266151307()
                        mem[64] = _1419 + ceil32(return_data.size) + (32 * mem[_1419 + mem[_1419]]) + 32
                        mem[_1419 + ceil32(return_data.size)] = _1432
                        require return_data.size >= _1427 + (32 * _1432) + 32
                        t = _1419 + _1427 + 32
                        u = _1419 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1432:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 0 < _1432
                        require 1 < mem[_720 + 96]
                        mem[_720 + 160] = mem[_1419 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2152 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2169 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = _720 + 32
                            u = mem[64] + 100
                            while s < _2169:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2152 + (32 * _2169) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _2791 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2791] = return_data.size
                                    mem[_2791 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2764 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2792 = mem[_2764]
                                require mem[_2764] <= test266151307()
                                require _2764 + return_data.size > _2764 + mem[_2764] + 31
                                _2826 = mem[_2764 + mem[_2764]]
                                require mem[_2764 + mem[_2764]] <= test266151307()
                                require (32 * mem[_2764 + mem[_2764]]) + 32 >= 0 and _2764 + ceil32(return_data.size) + (32 * mem[_2764 + mem[_2764]]) + 32 <= test266151307()
                                mem[64] = _2764 + ceil32(return_data.size) + (32 * mem[_2764 + mem[_2764]]) + 32
                                mem[_2764 + ceil32(return_data.size)] = _2826
                                require return_data.size >= _2792 + (32 * _2826) + 32
                                t = _2764 + _2792 + 32
                                u = _2764 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2826:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2826
                                require 2 < mem[_720 + 96]
                                mem[_720 + 192] = mem[_2764 + ceil32(return_data.size) + 32]
            else:
                mem[_720 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[_720 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_720 + 260] = 64
                mem[_720 + 292] = mem[_720]
                s = 0
                t = _720 + 32
                u = _720 + 324
                while s < mem[_720]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _720 + (32 * mem[_720]) + -mem[64] + 320]
                if not ext_call.success:
                    if not return_data.size:
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1442 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1452 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = _720 + 32
                                u = mem[64] + 100
                                while s < _1452:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1442 + (32 * _1452) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2137 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2137] = return_data.size
                                        mem[_2137 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2124 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2138 = mem[_2124]
                                    require mem[_2124] <= test266151307()
                                    require _2124 + return_data.size > _2124 + mem[_2124] + 31
                                    _2157 = mem[_2124 + mem[_2124]]
                                    require mem[_2124 + mem[_2124]] <= test266151307()
                                    require (32 * mem[_2124 + mem[_2124]]) + 32 >= 0 and _2124 + ceil32(return_data.size) + (32 * mem[_2124 + mem[_2124]]) + 32 <= test266151307()
                                    mem[64] = _2124 + ceil32(return_data.size) + (32 * mem[_2124 + mem[_2124]]) + 32
                                    mem[_2124 + ceil32(return_data.size)] = _2157
                                    require return_data.size >= _2138 + (32 * _2157) + 32
                                    t = _2124 + _2138 + 32
                                    u = _2124 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2157:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2157
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2124 + ceil32(return_data.size) + 32]
                        else:
                            _1438 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1447 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = _720 + 32
                            u = mem[64] + 100
                            while s < _1447:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1438 + (32 * _1447) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2172 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2196 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = _720 + 32
                                        u = mem[64] + 100
                                        while s < _2196:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2172 + (32 * _2196) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2793 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2793] = return_data.size
                                                mem[_2793 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2767 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2794 = mem[_2767]
                                            require mem[_2767] <= test266151307()
                                            require _2767 + return_data.size > _2767 + mem[_2767] + 31
                                            _2827 = mem[_2767 + mem[_2767]]
                                            require mem[_2767 + mem[_2767]] <= test266151307()
                                            require (32 * mem[_2767 + mem[_2767]]) + 32 >= 0 and _2767 + ceil32(return_data.size) + (32 * mem[_2767 + mem[_2767]]) + 32 <= test266151307()
                                            mem[64] = _2767 + ceil32(return_data.size) + (32 * mem[_2767 + mem[_2767]]) + 32
                                            mem[_2767 + ceil32(return_data.size)] = _2827
                                            require return_data.size >= _2794 + (32 * _2827) + 32
                                            t = _2767 + _2794 + 32
                                            u = _2767 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2827:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2827
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2767 + ceil32(return_data.size) + 32]
                                else:
                                    _2139 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2139] = return_data.size
                                    mem[_2139 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2173 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2197 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = _720 + 32
                                        u = mem[64] + 100
                                        while s < _2197:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2173 + (32 * _2197) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2795 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2795] = return_data.size
                                                mem[_2795 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2768 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2796 = mem[_2768]
                                            require mem[_2768] <= test266151307()
                                            require _2768 + return_data.size > _2768 + mem[_2768] + 31
                                            _2828 = mem[_2768 + mem[_2768]]
                                            require mem[_2768 + mem[_2768]] <= test266151307()
                                            require (32 * mem[_2768 + mem[_2768]]) + 32 >= 0 and _2768 + ceil32(return_data.size) + (32 * mem[_2768 + mem[_2768]]) + 32 <= test266151307()
                                            mem[64] = _2768 + ceil32(return_data.size) + (32 * mem[_2768 + mem[_2768]]) + 32
                                            mem[_2768 + ceil32(return_data.size)] = _2828
                                            require return_data.size >= _2796 + (32 * _2828) + 32
                                            t = _2768 + _2796 + 32
                                            u = _2768 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2828:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2828
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2768 + ceil32(return_data.size) + 32]
                            else:
                                _2125 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2140 = mem[_2125]
                                require mem[_2125] <= test266151307()
                                require _2125 + return_data.size > _2125 + mem[_2125] + 31
                                _2158 = mem[_2125 + mem[_2125]]
                                require mem[_2125 + mem[_2125]] <= test266151307()
                                require (32 * mem[_2125 + mem[_2125]]) + 32 >= 0 and _2125 + ceil32(return_data.size) + (32 * mem[_2125 + mem[_2125]]) + 32 <= test266151307()
                                mem[64] = _2125 + ceil32(return_data.size) + (32 * mem[_2125 + mem[_2125]]) + 32
                                mem[_2125 + ceil32(return_data.size)] = _2158
                                require return_data.size >= _2140 + (32 * _2158) + 32
                                t = _2125 + _2140 + 32
                                u = _2125 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2158:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2158
                                require 1 < mem[_720 + 96]
                                mem[_720 + 160] = mem[_2125 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2820 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2849 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = _720 + 32
                                    u = mem[64] + 100
                                    while s < _2849:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2820 + (32 * _2849) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3300 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3300] = return_data.size
                                            mem[_3300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3269 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3301 = mem[_3269]
                                        require mem[_3269] <= test266151307()
                                        require _3269 + return_data.size > _3269 + mem[_3269] + 31
                                        _3335 = mem[_3269 + mem[_3269]]
                                        require mem[_3269 + mem[_3269]] <= test266151307()
                                        require (32 * mem[_3269 + mem[_3269]]) + 32 >= 0 and _3269 + ceil32(return_data.size) + (32 * mem[_3269 + mem[_3269]]) + 32 <= test266151307()
                                        mem[64] = _3269 + ceil32(return_data.size) + (32 * mem[_3269 + mem[_3269]]) + 32
                                        mem[_3269 + ceil32(return_data.size)] = _3335
                                        require return_data.size >= _3301 + (32 * _3335) + 32
                                        t = _3269 + _3301 + 32
                                        u = _3269 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3335:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3335
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3269 + ceil32(return_data.size) + 32]
                    else:
                        _1428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1428] = return_data.size
                        mem[_1428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1443 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1453 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = _720 + 32
                                u = mem[64] + 100
                                while s < _1453:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1443 + (32 * _1453) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2141 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2141] = return_data.size
                                        mem[_2141 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2126 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2142 = mem[_2126]
                                    require mem[_2126] <= test266151307()
                                    require _2126 + return_data.size > _2126 + mem[_2126] + 31
                                    _2159 = mem[_2126 + mem[_2126]]
                                    require mem[_2126 + mem[_2126]] <= test266151307()
                                    require (32 * mem[_2126 + mem[_2126]]) + 32 >= 0 and _2126 + ceil32(return_data.size) + (32 * mem[_2126 + mem[_2126]]) + 32 <= test266151307()
                                    mem[64] = _2126 + ceil32(return_data.size) + (32 * mem[_2126 + mem[_2126]]) + 32
                                    mem[_2126 + ceil32(return_data.size)] = _2159
                                    require return_data.size >= _2142 + (32 * _2159) + 32
                                    t = _2126 + _2142 + 32
                                    u = _2126 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2159:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2159
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2126 + ceil32(return_data.size) + 32]
                        else:
                            _1439 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1449 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = _720 + 32
                            u = mem[64] + 100
                            while s < _1449:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1439 + (32 * _1449) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2176 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2198 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = _720 + 32
                                        u = mem[64] + 100
                                        while s < _2198:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2176 + (32 * _2198) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2797 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2797] = return_data.size
                                                mem[_2797 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2773 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2798 = mem[_2773]
                                            require mem[_2773] <= test266151307()
                                            require _2773 + return_data.size > _2773 + mem[_2773] + 31
                                            _2830 = mem[_2773 + mem[_2773]]
                                            require mem[_2773 + mem[_2773]] <= test266151307()
                                            require (32 * mem[_2773 + mem[_2773]]) + 32 >= 0 and _2773 + ceil32(return_data.size) + (32 * mem[_2773 + mem[_2773]]) + 32 <= test266151307()
                                            mem[64] = _2773 + ceil32(return_data.size) + (32 * mem[_2773 + mem[_2773]]) + 32
                                            mem[_2773 + ceil32(return_data.size)] = _2830
                                            require return_data.size >= _2798 + (32 * _2830) + 32
                                            t = _2773 + _2798 + 32
                                            u = _2773 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2830:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2830
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2773 + ceil32(return_data.size) + 32]
                                else:
                                    _2143 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2143] = return_data.size
                                    mem[_2143 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2177 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2199 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = _720 + 32
                                        u = mem[64] + 100
                                        while s < _2199:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2177 + (32 * _2199) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2799 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2799] = return_data.size
                                                mem[_2799 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2774 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2800 = mem[_2774]
                                            require mem[_2774] <= test266151307()
                                            require _2774 + return_data.size > _2774 + mem[_2774] + 31
                                            _2831 = mem[_2774 + mem[_2774]]
                                            require mem[_2774 + mem[_2774]] <= test266151307()
                                            require (32 * mem[_2774 + mem[_2774]]) + 32 >= 0 and _2774 + ceil32(return_data.size) + (32 * mem[_2774 + mem[_2774]]) + 32 <= test266151307()
                                            mem[64] = _2774 + ceil32(return_data.size) + (32 * mem[_2774 + mem[_2774]]) + 32
                                            mem[_2774 + ceil32(return_data.size)] = _2831
                                            require return_data.size >= _2800 + (32 * _2831) + 32
                                            t = _2774 + _2800 + 32
                                            u = _2774 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2831:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2831
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2774 + ceil32(return_data.size) + 32]
                            else:
                                _2127 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2144 = mem[_2127]
                                require mem[_2127] <= test266151307()
                                require _2127 + return_data.size > _2127 + mem[_2127] + 31
                                _2160 = mem[_2127 + mem[_2127]]
                                require mem[_2127 + mem[_2127]] <= test266151307()
                                require (32 * mem[_2127 + mem[_2127]]) + 32 >= 0 and _2127 + ceil32(return_data.size) + (32 * mem[_2127 + mem[_2127]]) + 32 <= test266151307()
                                mem[64] = _2127 + ceil32(return_data.size) + (32 * mem[_2127 + mem[_2127]]) + 32
                                mem[_2127 + ceil32(return_data.size)] = _2160
                                require return_data.size >= _2144 + (32 * _2160) + 32
                                t = _2127 + _2144 + 32
                                u = _2127 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2160:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2160
                                require 1 < mem[_720 + 96]
                                mem[_720 + 160] = mem[_2127 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2822 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2854 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = _720 + 32
                                    u = mem[64] + 100
                                    while s < _2854:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2822 + (32 * _2854) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3302 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3302] = return_data.size
                                            mem[_3302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3274 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3303 = mem[_3274]
                                        require mem[_3274] <= test266151307()
                                        require _3274 + return_data.size > _3274 + mem[_3274] + 31
                                        _3336 = mem[_3274 + mem[_3274]]
                                        require mem[_3274 + mem[_3274]] <= test266151307()
                                        require (32 * mem[_3274 + mem[_3274]]) + 32 >= 0 and _3274 + ceil32(return_data.size) + (32 * mem[_3274 + mem[_3274]]) + 32 <= test266151307()
                                        mem[64] = _3274 + ceil32(return_data.size) + (32 * mem[_3274 + mem[_3274]]) + 32
                                        mem[_3274 + ceil32(return_data.size)] = _3336
                                        require return_data.size >= _3303 + (32 * _3336) + 32
                                        t = _3274 + _3303 + 32
                                        u = _3274 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3336:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3336
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3274 + ceil32(return_data.size) + 32]
                else:
                    _1420 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1429 = mem[_1420]
                    require mem[_1420] <= test266151307()
                    require _1420 + return_data.size > _1420 + mem[_1420] + 31
                    _1433 = mem[_1420 + mem[_1420]]
                    require mem[_1420 + mem[_1420]] <= test266151307()
                    require (32 * mem[_1420 + mem[_1420]]) + 32 >= 0 and _1420 + ceil32(return_data.size) + (32 * mem[_1420 + mem[_1420]]) + 32 <= test266151307()
                    mem[64] = _1420 + ceil32(return_data.size) + (32 * mem[_1420 + mem[_1420]]) + 32
                    mem[_1420 + ceil32(return_data.size)] = _1433
                    require return_data.size >= _1429 + (32 * _1433) + 32
                    t = _1420 + _1429 + 32
                    u = _1420 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1433:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 0 < _1433
                    require 0 < mem[_720 + 96]
                    mem[_720 + 128] = mem[_1420 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2161 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2190 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = _720 + 32
                            u = mem[64] + 100
                            while s < _2190:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2161 + (32 * _2190) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _2801 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2801] = return_data.size
                                    mem[_2801 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2777 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2802 = mem[_2777]
                                require mem[_2777] <= test266151307()
                                require _2777 + return_data.size > _2777 + mem[_2777] + 31
                                _2833 = mem[_2777 + mem[_2777]]
                                require mem[_2777 + mem[_2777]] <= test266151307()
                                require (32 * mem[_2777 + mem[_2777]]) + 32 >= 0 and _2777 + ceil32(return_data.size) + (32 * mem[_2777 + mem[_2777]]) + 32 <= test266151307()
                                mem[64] = _2777 + ceil32(return_data.size) + (32 * mem[_2777 + mem[_2777]]) + 32
                                mem[_2777 + ceil32(return_data.size)] = _2833
                                require return_data.size >= _2802 + (32 * _2833) + 32
                                t = _2777 + _2802 + 32
                                u = _2777 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2833:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2833
                                require 2 < mem[_720 + 96]
                                mem[_720 + 192] = mem[_2777 + ceil32(return_data.size) + 32]
                    else:
                        _2153 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _2179 = mem[_720]
                        mem[mem[64] + 68] = mem[_720]
                        s = 0
                        t = _720 + 32
                        u = mem[64] + 100
                        while s < _2179:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2153 + (32 * _2179) + -mem[64] + 96]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2857 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2883 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = _720 + 32
                                    u = mem[64] + 100
                                    while s < _2883:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2857 + (32 * _2883) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3304 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3304] = return_data.size
                                            mem[_3304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3277 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3305 = mem[_3277]
                                        require mem[_3277] <= test266151307()
                                        require _3277 + return_data.size > _3277 + mem[_3277] + 31
                                        _3337 = mem[_3277 + mem[_3277]]
                                        require mem[_3277 + mem[_3277]] <= test266151307()
                                        require (32 * mem[_3277 + mem[_3277]]) + 32 >= 0 and _3277 + ceil32(return_data.size) + (32 * mem[_3277 + mem[_3277]]) + 32 <= test266151307()
                                        mem[64] = _3277 + ceil32(return_data.size) + (32 * mem[_3277 + mem[_3277]]) + 32
                                        mem[_3277 + ceil32(return_data.size)] = _3337
                                        require return_data.size >= _3305 + (32 * _3337) + 32
                                        t = _3277 + _3305 + 32
                                        u = _3277 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3337:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3337
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3277 + ceil32(return_data.size) + 32]
                            else:
                                _2803 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2803] = return_data.size
                                mem[_2803 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2884 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = _720 + 32
                                    u = mem[64] + 100
                                    while s < _2884:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2884) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3306 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3306] = return_data.size
                                            mem[_3306 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3278 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3307 = mem[_3278]
                                        require mem[_3278] <= test266151307()
                                        require _3278 + return_data.size > _3278 + mem[_3278] + 31
                                        _3338 = mem[_3278 + mem[_3278]]
                                        require mem[_3278 + mem[_3278]] <= test266151307()
                                        require (32 * mem[_3278 + mem[_3278]]) + 32 >= 0 and _3278 + ceil32(return_data.size) + (32 * mem[_3278 + mem[_3278]]) + 32 <= test266151307()
                                        mem[64] = _3278 + ceil32(return_data.size) + (32 * mem[_3278 + mem[_3278]]) + 32
                                        mem[_3278 + ceil32(return_data.size)] = _3338
                                        require return_data.size >= _3307 + (32 * _3338) + 32
                                        t = _3278 + _3307 + 32
                                        u = _3278 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3338:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3338
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3278 + ceil32(return_data.size) + 32]
                        else:
                            _2778 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2804 = mem[_2778]
                            require mem[_2778] <= test266151307()
                            require _2778 + return_data.size > _2778 + mem[_2778] + 31
                            _2834 = mem[_2778 + mem[_2778]]
                            require mem[_2778 + mem[_2778]] <= test266151307()
                            require (32 * mem[_2778 + mem[_2778]]) + 32 >= 0 and _2778 + ceil32(return_data.size) + (32 * mem[_2778 + mem[_2778]]) + 32 <= test266151307()
                            mem[64] = _2778 + ceil32(return_data.size) + (32 * mem[_2778 + mem[_2778]]) + 32
                            mem[_2778 + ceil32(return_data.size)] = _2834
                            require return_data.size >= _2804 + (32 * _2834) + 32
                            t = _2778 + _2804 + 32
                            u = _2778 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2834:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _2834
                            require 1 < mem[_720 + 96]
                            mem[_720 + 160] = mem[_2778 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _3328 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3357 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = _720 + 32
                                u = mem[64] + 100
                                while s < _3357:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _3328 + (32 * _3357) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3589 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3589] = return_data.size
                                        mem[_3589 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3570 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3590 = mem[_3570]
                                    require mem[_3570] <= test266151307()
                                    require _3570 + return_data.size > _3570 + mem[_3570] + 31
                                    _3610 = mem[_3570 + mem[_3570]]
                                    require mem[_3570 + mem[_3570]] <= test266151307()
                                    require (32 * mem[_3570 + mem[_3570]]) + 32 >= 0 and _3570 + ceil32(return_data.size) + (32 * mem[_3570 + mem[_3570]]) + 32 <= test266151307()
                                    mem[64] = _3570 + ceil32(return_data.size) + (32 * mem[_3570 + mem[_3570]]) + 32
                                    mem[_3570 + ceil32(return_data.size)] = _3610
                                    require return_data.size >= _3590 + (32 * _3610) + 32
                                    t = _3570 + _3590 + 32
                                    u = _3570 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3610:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _3610
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_3570 + ceil32(return_data.size) + 32]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _720 + 96
            idx = idx + 1
            continue 
        _708 = mem[64]
        mem[mem[64]] = 32
        _709 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _709:
            mem[t] = u + -_708 - 64
            _1406 = mem[s]
            _1411 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _1406 + 32
            x = u + 32
            while v < _1411:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _1411 + 1
            w = _1406 + (32 * _1411) + 64
            t = t + 32
            u = u + (32 * _1411) + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _1491 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1491]
            mem[_1491 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            require 1 < mem[_1491]
            mem[_1491 + 64] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_1491 + 96] = 3
            mem[64] = _1491 + 224
            mem[_1491 + 128 len 96] = call.data[calldata.size len 96]
            if not bool(cd[((32 * idx) + cd[4] + 36)]):
                if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                        mem[_1491 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_1491 + 228] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_1491 + 260] = 64
                        mem[_1491 + 292] = mem[_1491]
                        s = 0
                        t = _1491 + 32
                        u = _1491 + 324
                        while s < mem[_1491]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1491 + (32 * mem[_1491]) + -mem[64] + 320]
                        if not ext_call.success:
                            if return_data.size:
                                _2145 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2145] = return_data.size
                                mem[_2145 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _2130 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2146 = mem[_2130]
                            require mem[_2130] <= test266151307()
                            require _2130 + return_data.size > _2130 + mem[_2130] + 31
                            _2162 = mem[_2130 + mem[_2130]]
                            require mem[_2130 + mem[_2130]] <= test266151307()
                            require (32 * mem[_2130 + mem[_2130]]) + 32 >= 0 and _2130 + ceil32(return_data.size) + (32 * mem[_2130 + mem[_2130]]) + 32 <= test266151307()
                            mem[64] = _2130 + ceil32(return_data.size) + (32 * mem[_2130 + mem[_2130]]) + 32
                            mem[_2130 + ceil32(return_data.size)] = _2162
                            require return_data.size >= _2146 + (32 * _2162) + 32
                            t = _2130 + _2146 + 32
                            u = _2130 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2162:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _2162
                            require 2 < mem[_1491 + 96]
                            mem[_1491 + 192] = mem[_2130 + ceil32(return_data.size) + 32]
                else:
                    mem[_1491 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_1491 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_1491 + 260] = 64
                    mem[_1491 + 292] = mem[_1491]
                    s = 0
                    t = _1491 + 32
                    u = _1491 + 324
                    while s < mem[_1491]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1491 + (32 * mem[_1491]) + -mem[64] + 320]
                    if not ext_call.success:
                        if not return_data.size:
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2201 = mem[_1491]
                                mem[mem[64] + 68] = mem[_1491]
                                s = 0
                                t = _1491 + 32
                                u = mem[64] + 100
                                while s < _2201:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2201) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2805 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2805] = return_data.size
                                        mem[_2805 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2781 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2806 = mem[_2781]
                                    require mem[_2781] <= test266151307()
                                    require _2781 + return_data.size > _2781 + mem[_2781] + 31
                                    _2835 = mem[_2781 + mem[_2781]]
                                    require mem[_2781 + mem[_2781]] <= test266151307()
                                    require (32 * mem[_2781 + mem[_2781]]) + 32 >= 0 and _2781 + ceil32(return_data.size) + (32 * mem[_2781 + mem[_2781]]) + 32 <= test266151307()
                                    mem[64] = _2781 + ceil32(return_data.size) + (32 * mem[_2781 + mem[_2781]]) + 32
                                    mem[_2781 + ceil32(return_data.size)] = _2835
                                    require return_data.size >= _2806 + (32 * _2835) + 32
                                    t = _2781 + _2806 + 32
                                    u = _2781 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2835:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2835
                                    require 2 < mem[_1491 + 96]
                                    mem[_1491 + 192] = mem[_2781 + ceil32(return_data.size) + 32]
                        else:
                            _2147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2147] = return_data.size
                            mem[_2147 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2202 = mem[_1491]
                                mem[mem[64] + 68] = mem[_1491]
                                s = 0
                                t = _1491 + 32
                                u = mem[64] + 100
                                while s < _2202:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2202) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2807 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2807] = return_data.size
                                        mem[_2807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2782 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2808 = mem[_2782]
                                    require mem[_2782] <= test266151307()
                                    require _2782 + return_data.size > _2782 + mem[_2782] + 31
                                    _2836 = mem[_2782 + mem[_2782]]
                                    require mem[_2782 + mem[_2782]] <= test266151307()
                                    require (32 * mem[_2782 + mem[_2782]]) + 32 >= 0 and _2782 + ceil32(return_data.size) + (32 * mem[_2782 + mem[_2782]]) + 32 <= test266151307()
                                    mem[64] = _2782 + ceil32(return_data.size) + (32 * mem[_2782 + mem[_2782]]) + 32
                                    mem[_2782 + ceil32(return_data.size)] = _2836
                                    require return_data.size >= _2808 + (32 * _2836) + 32
                                    t = _2782 + _2808 + 32
                                    u = _2782 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2836:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2836
                                    require 2 < mem[_1491 + 96]
                                    mem[_1491 + 192] = mem[_2782 + ceil32(return_data.size) + 32]
                    else:
                        _2131 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2148 = mem[_2131]
                        require mem[_2131] <= test266151307()
                        require _2131 + return_data.size > _2131 + mem[_2131] + 31
                        _2163 = mem[_2131 + mem[_2131]]
                        require mem[_2131 + mem[_2131]] <= test266151307()
                        require (32 * mem[_2131 + mem[_2131]]) + 32 >= 0 and _2131 + ceil32(return_data.size) + (32 * mem[_2131 + mem[_2131]]) + 32 <= test266151307()
                        mem[64] = _2131 + ceil32(return_data.size) + (32 * mem[_2131 + mem[_2131]]) + 32
                        mem[_2131 + ceil32(return_data.size)] = _2163
                        require return_data.size >= _2148 + (32 * _2163) + 32
                        t = _2131 + _2148 + 32
                        u = _2131 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2163:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 0 < _2163
                        require 1 < mem[_1491 + 96]
                        mem[_1491 + 160] = mem[_2131 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2863 = mem[_1491]
                            mem[mem[64] + 68] = mem[_1491]
                            s = 0
                            t = _1491 + 32
                            u = mem[64] + 100
                            while s < _2863:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2863) + 32]
                            if not ext_call.success:
                                if return_data.size:
                                    _3308 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3308] = return_data.size
                                    mem[_3308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3285 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3309 = mem[_3285]
                                require mem[_3285] <= test266151307()
                                require _3285 + return_data.size > _3285 + mem[_3285] + 31
                                _3340 = mem[_3285 + mem[_3285]]
                                require mem[_3285 + mem[_3285]] <= test266151307()
                                require (32 * mem[_3285 + mem[_3285]]) + 32 >= 0 and _3285 + ceil32(return_data.size) + (32 * mem[_3285 + mem[_3285]]) + 32 <= test266151307()
                                mem[64] = _3285 + ceil32(return_data.size) + (32 * mem[_3285 + mem[_3285]]) + 32
                                mem[_3285 + ceil32(return_data.size)] = _3340
                                require return_data.size >= _3309 + (32 * _3340) + 32
                                t = _3285 + _3309 + 32
                                u = _3285 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3340:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _3340
                                require 2 < mem[_1491 + 96]
                                mem[_1491 + 192] = mem[_3285 + ceil32(return_data.size) + 32]
            else:
                mem[_1491 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[_1491 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_1491 + 260] = 64
                mem[_1491 + 292] = mem[_1491]
                s = 0
                t = _1491 + 32
                u = _1491 + 324
                while s < mem[_1491]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1491 + (32 * mem[_1491]) + -mem[64] + 320]
                if not ext_call.success:
                    if not return_data.size:
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2193 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2216 = mem[_1491]
                                mem[mem[64] + 68] = mem[_1491]
                                s = 0
                                t = _1491 + 32
                                u = mem[64] + 100
                                while s < _2216:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2193 + (32 * _2216) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2809 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2809] = return_data.size
                                        mem[_2809 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2785 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2810 = mem[_2785]
                                    require mem[_2785] <= test266151307()
                                    require _2785 + return_data.size > _2785 + mem[_2785] + 31
                                    _2838 = mem[_2785 + mem[_2785]]
                                    require mem[_2785 + mem[_2785]] <= test266151307()
                                    require (32 * mem[_2785 + mem[_2785]]) + 32 >= 0 and _2785 + ceil32(return_data.size) + (32 * mem[_2785 + mem[_2785]]) + 32 <= test266151307()
                                    mem[64] = _2785 + ceil32(return_data.size) + (32 * mem[_2785 + mem[_2785]]) + 32
                                    mem[_2785 + ceil32(return_data.size)] = _2838
                                    require return_data.size >= _2810 + (32 * _2838) + 32
                                    t = _2785 + _2810 + 32
                                    u = _2785 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2838:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2838
                                    require 2 < mem[_1491 + 96]
                                    mem[_1491 + 192] = mem[_2785 + ceil32(return_data.size) + 32]
                        else:
                            _2184 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2204 = mem[_1491]
                            mem[mem[64] + 68] = mem[_1491]
                            s = 0
                            t = _1491 + 32
                            u = mem[64] + 100
                            while s < _2204:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2184 + (32 * _2204) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2886 = mem[_1491]
                                        mem[mem[64] + 68] = mem[_1491]
                                        s = 0
                                        t = _1491 + 32
                                        u = mem[64] + 100
                                        while s < _2886:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2886) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3310 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3310] = return_data.size
                                                mem[_3310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3288 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3311 = mem[_3288]
                                            require mem[_3288] <= test266151307()
                                            require _3288 + return_data.size > _3288 + mem[_3288] + 31
                                            _3341 = mem[_3288 + mem[_3288]]
                                            require mem[_3288 + mem[_3288]] <= test266151307()
                                            require (32 * mem[_3288 + mem[_3288]]) + 32 >= 0 and _3288 + ceil32(return_data.size) + (32 * mem[_3288 + mem[_3288]]) + 32 <= test266151307()
                                            mem[64] = _3288 + ceil32(return_data.size) + (32 * mem[_3288 + mem[_3288]]) + 32
                                            mem[_3288 + ceil32(return_data.size)] = _3341
                                            require return_data.size >= _3311 + (32 * _3341) + 32
                                            t = _3288 + _3311 + 32
                                            u = _3288 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3341:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3341
                                            require 2 < mem[_1491 + 96]
                                            mem[_1491 + 192] = mem[_3288 + ceil32(return_data.size) + 32]
                                else:
                                    _2811 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2811] = return_data.size
                                    mem[_2811 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2887 = mem[_1491]
                                        mem[mem[64] + 68] = mem[_1491]
                                        s = 0
                                        t = _1491 + 32
                                        u = mem[64] + 100
                                        while s < _2887:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2887) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3312 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3312] = return_data.size
                                                mem[_3312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3289 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3313 = mem[_3289]
                                            require mem[_3289] <= test266151307()
                                            require _3289 + return_data.size > _3289 + mem[_3289] + 31
                                            _3342 = mem[_3289 + mem[_3289]]
                                            require mem[_3289 + mem[_3289]] <= test266151307()
                                            require (32 * mem[_3289 + mem[_3289]]) + 32 >= 0 and _3289 + ceil32(return_data.size) + (32 * mem[_3289 + mem[_3289]]) + 32 <= test266151307()
                                            mem[64] = _3289 + ceil32(return_data.size) + (32 * mem[_3289 + mem[_3289]]) + 32
                                            mem[_3289 + ceil32(return_data.size)] = _3342
                                            require return_data.size >= _3313 + (32 * _3342) + 32
                                            t = _3289 + _3313 + 32
                                            u = _3289 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3342:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3342
                                            require 2 < mem[_1491 + 96]
                                            mem[_1491 + 192] = mem[_3289 + ceil32(return_data.size) + 32]
                            else:
                                _2786 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2812 = mem[_2786]
                                require mem[_2786] <= test266151307()
                                require _2786 + return_data.size > _2786 + mem[_2786] + 31
                                _2839 = mem[_2786 + mem[_2786]]
                                require mem[_2786 + mem[_2786]] <= test266151307()
                                require (32 * mem[_2786 + mem[_2786]]) + 32 >= 0 and _2786 + ceil32(return_data.size) + (32 * mem[_2786 + mem[_2786]]) + 32 <= test266151307()
                                mem[64] = _2786 + ceil32(return_data.size) + (32 * mem[_2786 + mem[_2786]]) + 32
                                mem[_2786 + ceil32(return_data.size)] = _2839
                                require return_data.size >= _2812 + (32 * _2839) + 32
                                t = _2786 + _2812 + 32
                                u = _2786 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2839:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2839
                                require 1 < mem[_1491 + 96]
                                mem[_1491 + 160] = mem[_2786 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3332 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3364 = mem[_1491]
                                    mem[mem[64] + 68] = mem[_1491]
                                    s = 0
                                    t = _1491 + 32
                                    u = mem[64] + 100
                                    while s < _3364:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3332 + (32 * _3364) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3591 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3591] = return_data.size
                                            mem[_3591 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3577 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3592 = mem[_3577]
                                        require mem[_3577] <= test266151307()
                                        require _3577 + return_data.size > _3577 + mem[_3577] + 31
                                        _3611 = mem[_3577 + mem[_3577]]
                                        require mem[_3577 + mem[_3577]] <= test266151307()
                                        require (32 * mem[_3577 + mem[_3577]]) + 32 >= 0 and _3577 + ceil32(return_data.size) + (32 * mem[_3577 + mem[_3577]]) + 32 <= test266151307()
                                        mem[64] = _3577 + ceil32(return_data.size) + (32 * mem[_3577 + mem[_3577]]) + 32
                                        mem[_3577 + ceil32(return_data.size)] = _3611
                                        require return_data.size >= _3592 + (32 * _3611) + 32
                                        t = _3577 + _3592 + 32
                                        u = _3577 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3611:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3611
                                        require 2 < mem[_1491 + 96]
                                        mem[_1491 + 192] = mem[_3577 + ceil32(return_data.size) + 32]
                    else:
                        _2149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2149] = return_data.size
                        mem[_2149 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2194 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2217 = mem[_1491]
                                mem[mem[64] + 68] = mem[_1491]
                                s = 0
                                t = _1491 + 32
                                u = mem[64] + 100
                                while s < _2217:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2194 + (32 * _2217) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2813 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2813] = return_data.size
                                        mem[_2813 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2787 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2814 = mem[_2787]
                                    require mem[_2787] <= test266151307()
                                    require _2787 + return_data.size > _2787 + mem[_2787] + 31
                                    _2840 = mem[_2787 + mem[_2787]]
                                    require mem[_2787 + mem[_2787]] <= test266151307()
                                    require (32 * mem[_2787 + mem[_2787]]) + 32 >= 0 and _2787 + ceil32(return_data.size) + (32 * mem[_2787 + mem[_2787]]) + 32 <= test266151307()
                                    mem[64] = _2787 + ceil32(return_data.size) + (32 * mem[_2787 + mem[_2787]]) + 32
                                    mem[_2787 + ceil32(return_data.size)] = _2840
                                    require return_data.size >= _2814 + (32 * _2840) + 32
                                    t = _2787 + _2814 + 32
                                    u = _2787 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2840:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2840
                                    require 2 < mem[_1491 + 96]
                                    mem[_1491 + 192] = mem[_2787 + ceil32(return_data.size) + 32]
                        else:
                            _2185 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2206 = mem[_1491]
                            mem[mem[64] + 68] = mem[_1491]
                            s = 0
                            t = _1491 + 32
                            u = mem[64] + 100
                            while s < _2206:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2185 + (32 * _2206) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2888 = mem[_1491]
                                        mem[mem[64] + 68] = mem[_1491]
                                        s = 0
                                        t = _1491 + 32
                                        u = mem[64] + 100
                                        while s < _2888:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2888) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3314 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3314] = return_data.size
                                                mem[_3314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3294 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3315 = mem[_3294]
                                            require mem[_3294] <= test266151307()
                                            require _3294 + return_data.size > _3294 + mem[_3294] + 31
                                            _3344 = mem[_3294 + mem[_3294]]
                                            require mem[_3294 + mem[_3294]] <= test266151307()
                                            require (32 * mem[_3294 + mem[_3294]]) + 32 >= 0 and _3294 + ceil32(return_data.size) + (32 * mem[_3294 + mem[_3294]]) + 32 <= test266151307()
                                            mem[64] = _3294 + ceil32(return_data.size) + (32 * mem[_3294 + mem[_3294]]) + 32
                                            mem[_3294 + ceil32(return_data.size)] = _3344
                                            require return_data.size >= _3315 + (32 * _3344) + 32
                                            t = _3294 + _3315 + 32
                                            u = _3294 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3344:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3344
                                            require 2 < mem[_1491 + 96]
                                            mem[_1491 + 192] = mem[_3294 + ceil32(return_data.size) + 32]
                                else:
                                    _2815 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2815] = return_data.size
                                    mem[_2815 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2871 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2889 = mem[_1491]
                                        mem[mem[64] + 68] = mem[_1491]
                                        s = 0
                                        t = _1491 + 32
                                        u = mem[64] + 100
                                        while s < _2889:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2871 + (32 * _2889) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3316 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3316] = return_data.size
                                                mem[_3316 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3295 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3317 = mem[_3295]
                                            require mem[_3295] <= test266151307()
                                            require _3295 + return_data.size > _3295 + mem[_3295] + 31
                                            _3345 = mem[_3295 + mem[_3295]]
                                            require mem[_3295 + mem[_3295]] <= test266151307()
                                            require (32 * mem[_3295 + mem[_3295]]) + 32 >= 0 and _3295 + ceil32(return_data.size) + (32 * mem[_3295 + mem[_3295]]) + 32 <= test266151307()
                                            mem[64] = _3295 + ceil32(return_data.size) + (32 * mem[_3295 + mem[_3295]]) + 32
                                            mem[_3295 + ceil32(return_data.size)] = _3345
                                            require return_data.size >= _3317 + (32 * _3345) + 32
                                            t = _3295 + _3317 + 32
                                            u = _3295 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3345:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3345
                                            require 2 < mem[_1491 + 96]
                                            mem[_1491 + 192] = mem[_3295 + ceil32(return_data.size) + 32]
                            else:
                                _2788 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2816 = mem[_2788]
                                require mem[_2788] <= test266151307()
                                require _2788 + return_data.size > _2788 + mem[_2788] + 31
                                _2841 = mem[_2788 + mem[_2788]]
                                require mem[_2788 + mem[_2788]] <= test266151307()
                                require (32 * mem[_2788 + mem[_2788]]) + 32 >= 0 and _2788 + ceil32(return_data.size) + (32 * mem[_2788 + mem[_2788]]) + 32 <= test266151307()
                                mem[64] = _2788 + ceil32(return_data.size) + (32 * mem[_2788 + mem[_2788]]) + 32
                                mem[_2788 + ceil32(return_data.size)] = _2841
                                require return_data.size >= _2816 + (32 * _2841) + 32
                                t = _2788 + _2816 + 32
                                u = _2788 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2841:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2841
                                require 1 < mem[_1491 + 96]
                                mem[_1491 + 160] = mem[_2788 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3334 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3369 = mem[_1491]
                                    mem[mem[64] + 68] = mem[_1491]
                                    s = 0
                                    t = _1491 + 32
                                    u = mem[64] + 100
                                    while s < _3369:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3334 + (32 * _3369) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3593 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3593] = return_data.size
                                            mem[_3593 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3582 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3594 = mem[_3582]
                                        require mem[_3582] <= test266151307()
                                        require _3582 + return_data.size > _3582 + mem[_3582] + 31
                                        _3612 = mem[_3582 + mem[_3582]]
                                        require mem[_3582 + mem[_3582]] <= test266151307()
                                        require (32 * mem[_3582 + mem[_3582]]) + 32 >= 0 and _3582 + ceil32(return_data.size) + (32 * mem[_3582 + mem[_3582]]) + 32 <= test266151307()
                                        mem[64] = _3582 + ceil32(return_data.size) + (32 * mem[_3582 + mem[_3582]]) + 32
                                        mem[_3582 + ceil32(return_data.size)] = _3612
                                        require return_data.size >= _3594 + (32 * _3612) + 32
                                        t = _3582 + _3594 + 32
                                        u = _3582 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3612:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3612
                                        require 2 < mem[_1491 + 96]
                                        mem[_1491 + 192] = mem[_3582 + ceil32(return_data.size) + 32]
                else:
                    _2132 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2150 = mem[_2132]
                    require mem[_2132] <= test266151307()
                    require _2132 + return_data.size > _2132 + mem[_2132] + 31
                    _2164 = mem[_2132 + mem[_2132]]
                    require mem[_2132 + mem[_2132]] <= test266151307()
                    require (32 * mem[_2132 + mem[_2132]]) + 32 >= 0 and _2132 + ceil32(return_data.size) + (32 * mem[_2132 + mem[_2132]]) + 32 <= test266151307()
                    mem[64] = _2132 + ceil32(return_data.size) + (32 * mem[_2132 + mem[_2132]]) + 32
                    mem[_2132 + ceil32(return_data.size)] = _2164
                    require return_data.size >= _2150 + (32 * _2164) + 32
                    t = _2132 + _2150 + 32
                    u = _2132 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2164:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 0 < _2164
                    require 0 < mem[_1491 + 96]
                    mem[_1491 + 128] = mem[_2132 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2842 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2880 = mem[_1491]
                            mem[mem[64] + 68] = mem[_1491]
                            s = 0
                            t = _1491 + 32
                            u = mem[64] + 100
                            while s < _2880:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2842 + (32 * _2880) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _3318 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3318] = return_data.size
                                    mem[_3318 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3298 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3319 = mem[_3298]
                                require mem[_3298] <= test266151307()
                                require _3298 + return_data.size > _3298 + mem[_3298] + 31
                                _3347 = mem[_3298 + mem[_3298]]
                                require mem[_3298 + mem[_3298]] <= test266151307()
                                require (32 * mem[_3298 + mem[_3298]]) + 32 >= 0 and _3298 + ceil32(return_data.size) + (32 * mem[_3298 + mem[_3298]]) + 32 <= test266151307()
                                mem[64] = _3298 + ceil32(return_data.size) + (32 * mem[_3298 + mem[_3298]]) + 32
                                mem[_3298 + ceil32(return_data.size)] = _3347
                                require return_data.size >= _3319 + (32 * _3347) + 32
                                t = _3298 + _3319 + 32
                                u = _3298 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3347:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _3347
                                require 2 < mem[_1491 + 96]
                                mem[_1491 + 192] = mem[_3298 + ceil32(return_data.size) + 32]
                    else:
                        _2825 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _2873 = mem[_1491]
                        mem[mem[64] + 68] = mem[_1491]
                        s = 0
                        t = _1491 + 32
                        u = mem[64] + 100
                        while s < _2873:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2825 + (32 * _2873) + -mem[64] + 96]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3372 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3379 = mem[_1491]
                                    mem[mem[64] + 68] = mem[_1491]
                                    s = 0
                                    t = _1491 + 32
                                    u = mem[64] + 100
                                    while s < _3379:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3372 + (32 * _3379) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3595 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3595] = return_data.size
                                            mem[_3595 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3585 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3596 = mem[_3585]
                                        require mem[_3585] <= test266151307()
                                        require _3585 + return_data.size > _3585 + mem[_3585] + 31
                                        _3613 = mem[_3585 + mem[_3585]]
                                        require mem[_3585 + mem[_3585]] <= test266151307()
                                        require (32 * mem[_3585 + mem[_3585]]) + 32 >= 0 and _3585 + ceil32(return_data.size) + (32 * mem[_3585 + mem[_3585]]) + 32 <= test266151307()
                                        mem[64] = _3585 + ceil32(return_data.size) + (32 * mem[_3585 + mem[_3585]]) + 32
                                        mem[_3585 + ceil32(return_data.size)] = _3613
                                        require return_data.size >= _3596 + (32 * _3613) + 32
                                        t = _3585 + _3596 + 32
                                        u = _3585 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3613:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3613
                                        require 2 < mem[_1491 + 96]
                                        mem[_1491 + 192] = mem[_3585 + ceil32(return_data.size) + 32]
                            else:
                                _3320 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_3320] = return_data.size
                                mem[_3320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3373 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3380 = mem[_1491]
                                    mem[mem[64] + 68] = mem[_1491]
                                    s = 0
                                    t = _1491 + 32
                                    u = mem[64] + 100
                                    while s < _3380:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3373 + (32 * _3380) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3597 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3597] = return_data.size
                                            mem[_3597 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3586 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3598 = mem[_3586]
                                        require mem[_3586] <= test266151307()
                                        require _3586 + return_data.size > _3586 + mem[_3586] + 31
                                        _3614 = mem[_3586 + mem[_3586]]
                                        require mem[_3586 + mem[_3586]] <= test266151307()
                                        require (32 * mem[_3586 + mem[_3586]]) + 32 >= 0 and _3586 + ceil32(return_data.size) + (32 * mem[_3586 + mem[_3586]]) + 32 <= test266151307()
                                        mem[64] = _3586 + ceil32(return_data.size) + (32 * mem[_3586 + mem[_3586]]) + 32
                                        mem[_3586 + ceil32(return_data.size)] = _3614
                                        require return_data.size >= _3598 + (32 * _3614) + 32
                                        t = _3586 + _3598 + 32
                                        u = _3586 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3614:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3614
                                        require 2 < mem[_1491 + 96]
                                        mem[_1491 + 192] = mem[_3586 + ceil32(return_data.size) + 32]
                        else:
                            _3299 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3321 = mem[_3299]
                            require mem[_3299] <= test266151307()
                            require _3299 + return_data.size > _3299 + mem[_3299] + 31
                            _3348 = mem[_3299 + mem[_3299]]
                            require mem[_3299 + mem[_3299]] <= test266151307()
                            require (32 * mem[_3299 + mem[_3299]]) + 32 >= 0 and _3299 + ceil32(return_data.size) + (32 * mem[_3299 + mem[_3299]]) + 32 <= test266151307()
                            mem[64] = _3299 + ceil32(return_data.size) + (32 * mem[_3299 + mem[_3299]]) + 32
                            mem[_3299 + ceil32(return_data.size)] = _3348
                            require return_data.size >= _3321 + (32 * _3348) + 32
                            t = _3299 + _3321 + 32
                            u = _3299 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _3348:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _3348
                            require 1 < mem[_1491 + 96]
                            mem[_1491 + 160] = mem[_3299 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3626 = mem[_1491]
                                mem[mem[64] + 68] = mem[_1491]
                                s = 0
                                t = _1491 + 32
                                u = mem[64] + 100
                                while s < _3626:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3626) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3694 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3694] = return_data.size
                                        mem[_3694 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3693 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3695 = mem[_3693]
                                    require mem[_3693] <= test266151307()
                                    require _3693 + return_data.size > _3693 + mem[_3693] + 31
                                    _3701 = mem[_3693 + mem[_3693]]
                                    require mem[_3693 + mem[_3693]] <= test266151307()
                                    require (32 * mem[_3693 + mem[_3693]]) + 32 >= 0 and _3693 + ceil32(return_data.size) + (32 * mem[_3693 + mem[_3693]]) + 32 <= test266151307()
                                    mem[64] = _3693 + ceil32(return_data.size) + (32 * mem[_3693 + mem[_3693]]) + 32
                                    mem[_3693 + ceil32(return_data.size)] = _3701
                                    require return_data.size >= _3695 + (32 * _3701) + 32
                                    t = _3693 + _3695 + 32
                                    u = _3693 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3701:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _3701
                                    require 2 < mem[_1491 + 96]
                                    mem[_1491 + 192] = mem[_3693 + ceil32(return_data.size) + 32]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _1491 + 96
            idx = idx + 1
            continue 
        _1412 = mem[64]
        mem[mem[64]] = 32
        _1416 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _1416:
            mem[t] = u + -_1412 - 64
            _2099 = mem[s]
            _2104 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _2099 + 32
            x = u + 32
            while v < _2104:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _2104 + 1
            w = _2099 + (32 * _2104) + 64
            t = t + 32
            u = u + (32 * _2104) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_37ad065c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Invalid input'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    if ('cd', 100).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _762 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_762]
            mem[_762 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
            require 1 < mem[_762]
            mem[_762 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_762 + 96] = 3
            mem[64] = _762 + 224
            mem[_762 + 128 len 96] = call.data[calldata.size len 96]
            if not bool(cd[((32 * idx) + cd[4] + 36)]):
                if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                        mem[_762 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_762 + 228] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_762 + 260] = 64
                        mem[_762 + 292] = mem[_762]
                        s = 0
                        t = _762 + 32
                        u = _762 + 324
                        while s < mem[_762]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 320]
                        if not ext_call.success:
                            if return_data.size:
                                _1508 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1508] = return_data.size
                                mem[_1508 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1502 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1509 = mem[_1502]
                            require mem[_1502] <= test266151307()
                            require _1502 + return_data.size > _1502 + mem[_1502] + 31
                            _1515 = mem[_1502 + mem[_1502]]
                            require mem[_1502 + mem[_1502]] <= test266151307()
                            require (32 * mem[_1502 + mem[_1502]]) + 32 >= 0 and _1502 + ceil32(return_data.size) + (32 * mem[_1502 + mem[_1502]]) + 32 <= test266151307()
                            mem[64] = _1502 + ceil32(return_data.size) + (32 * mem[_1502 + mem[_1502]]) + 32
                            mem[_1502 + ceil32(return_data.size)] = _1515
                            require return_data.size >= _1509 + (32 * _1515) + 32
                            t = _1502 + _1509 + 32
                            u = _1502 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1515:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _1515 - 1 < _1515
                            require 2 < mem[_762 + 96]
                            mem[_762 + 192] = mem[(32 * _1515 - 1) + _1502 + ceil32(return_data.size) + 32]
                else:
                    mem[_762 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_762 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_762 + 260] = 64
                    mem[_762 + 292] = mem[_762]
                    s = 0
                    t = _762 + 32
                    u = _762 + 324
                    while s < mem[_762]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 320]
                    if not ext_call.success:
                        if not return_data.size:
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1520 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1528 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = _762 + 32
                                u = mem[64] + 100
                                while s < _1528:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1520 + (32 * _1528) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2262 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2262] = return_data.size
                                        mem[_2262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2249 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2263 = mem[_2249]
                                    require mem[_2249] <= test266151307()
                                    require _2249 + return_data.size > _2249 + mem[_2249] + 31
                                    _2283 = mem[_2249 + mem[_2249]]
                                    require mem[_2249 + mem[_2249]] <= test266151307()
                                    require (32 * mem[_2249 + mem[_2249]]) + 32 >= 0 and _2249 + ceil32(return_data.size) + (32 * mem[_2249 + mem[_2249]]) + 32 <= test266151307()
                                    mem[64] = _2249 + ceil32(return_data.size) + (32 * mem[_2249 + mem[_2249]]) + 32
                                    mem[_2249 + ceil32(return_data.size)] = _2283
                                    require return_data.size >= _2263 + (32 * _2283) + 32
                                    t = _2249 + _2263 + 32
                                    u = _2249 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2283:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2283 - 1 < _2283
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2283 - 1) + _2249 + ceil32(return_data.size) + 32]
                        else:
                            _1510 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1510] = return_data.size
                            mem[_1510 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1521 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1529 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = _762 + 32
                                u = mem[64] + 100
                                while s < _1529:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1521 + (32 * _1529) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2264 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2264] = return_data.size
                                        mem[_2264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2250 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2265 = mem[_2250]
                                    require mem[_2250] <= test266151307()
                                    require _2250 + return_data.size > _2250 + mem[_2250] + 31
                                    _2284 = mem[_2250 + mem[_2250]]
                                    require mem[_2250 + mem[_2250]] <= test266151307()
                                    require (32 * mem[_2250 + mem[_2250]]) + 32 >= 0 and _2250 + ceil32(return_data.size) + (32 * mem[_2250 + mem[_2250]]) + 32 <= test266151307()
                                    mem[64] = _2250 + ceil32(return_data.size) + (32 * mem[_2250 + mem[_2250]]) + 32
                                    mem[_2250 + ceil32(return_data.size)] = _2284
                                    require return_data.size >= _2265 + (32 * _2284) + 32
                                    t = _2250 + _2265 + 32
                                    u = _2250 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2284:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2284 - 1 < _2284
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2284 - 1) + _2250 + ceil32(return_data.size) + 32]
                    else:
                        _1503 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1511 = mem[_1503]
                        require mem[_1503] <= test266151307()
                        require _1503 + return_data.size > _1503 + mem[_1503] + 31
                        _1516 = mem[_1503 + mem[_1503]]
                        require mem[_1503 + mem[_1503]] <= test266151307()
                        require (32 * mem[_1503 + mem[_1503]]) + 32 >= 0 and _1503 + ceil32(return_data.size) + (32 * mem[_1503 + mem[_1503]]) + 32 <= test266151307()
                        mem[64] = _1503 + ceil32(return_data.size) + (32 * mem[_1503 + mem[_1503]]) + 32
                        mem[_1503 + ceil32(return_data.size)] = _1516
                        require return_data.size >= _1511 + (32 * _1516) + 32
                        t = _1503 + _1511 + 32
                        u = _1503 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1516:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _1516 - 1 < _1516
                        require 1 < mem[_762 + 96]
                        mem[_762 + 160] = mem[(32 * _1516 - 1) + _1503 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2298 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = _762 + 32
                            u = mem[64] + 100
                            while s < _2298:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2298) + 32]
                            if not ext_call.success:
                                if return_data.size:
                                    _2968 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2968] = return_data.size
                                    mem[_2968 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2941 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2969 = mem[_2941]
                                require mem[_2941] <= test266151307()
                                require _2941 + return_data.size > _2941 + mem[_2941] + 31
                                _3003 = mem[_2941 + mem[_2941]]
                                require mem[_2941 + mem[_2941]] <= test266151307()
                                require (32 * mem[_2941 + mem[_2941]]) + 32 >= 0 and _2941 + ceil32(return_data.size) + (32 * mem[_2941 + mem[_2941]]) + 32 <= test266151307()
                                mem[64] = _2941 + ceil32(return_data.size) + (32 * mem[_2941 + mem[_2941]]) + 32
                                mem[_2941 + ceil32(return_data.size)] = _3003
                                require return_data.size >= _2969 + (32 * _3003) + 32
                                t = _2941 + _2969 + 32
                                u = _2941 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3003:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3003 - 1 < _3003
                                require 2 < mem[_762 + 96]
                                mem[_762 + 192] = mem[(32 * _3003 - 1) + _2941 + ceil32(return_data.size) + 32]
            else:
                mem[_762 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_762 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_762 + 260] = 64
                mem[_762 + 292] = mem[_762]
                s = 0
                t = _762 + 32
                u = _762 + 324
                while s < mem[_762]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 320]
                if not ext_call.success:
                    if not return_data.size:
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1536 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = _762 + 32
                                u = mem[64] + 100
                                while s < _1536:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1536) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2266 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2266] = return_data.size
                                        mem[_2266 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2253 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2267 = mem[_2253]
                                    require mem[_2253] <= test266151307()
                                    require _2253 + return_data.size > _2253 + mem[_2253] + 31
                                    _2286 = mem[_2253 + mem[_2253]]
                                    require mem[_2253 + mem[_2253]] <= test266151307()
                                    require (32 * mem[_2253 + mem[_2253]]) + 32 >= 0 and _2253 + ceil32(return_data.size) + (32 * mem[_2253 + mem[_2253]]) + 32 <= test266151307()
                                    mem[64] = _2253 + ceil32(return_data.size) + (32 * mem[_2253 + mem[_2253]]) + 32
                                    mem[_2253 + ceil32(return_data.size)] = _2286
                                    require return_data.size >= _2267 + (32 * _2286) + 32
                                    t = _2253 + _2267 + 32
                                    u = _2253 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2286:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2286 - 1 < _2286
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2286 - 1) + _2253 + ceil32(return_data.size) + 32]
                        else:
                            _1522 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1531 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = _762 + 32
                            u = mem[64] + 100
                            while s < _1531:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1522 + (32 * _1531) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2325 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = _762 + 32
                                        u = mem[64] + 100
                                        while s < _2325:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2325) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2970 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2970] = return_data.size
                                                mem[_2970 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2944 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2971 = mem[_2944]
                                            require mem[_2944] <= test266151307()
                                            require _2944 + return_data.size > _2944 + mem[_2944] + 31
                                            _3004 = mem[_2944 + mem[_2944]]
                                            require mem[_2944 + mem[_2944]] <= test266151307()
                                            require (32 * mem[_2944 + mem[_2944]]) + 32 >= 0 and _2944 + ceil32(return_data.size) + (32 * mem[_2944 + mem[_2944]]) + 32 <= test266151307()
                                            mem[64] = _2944 + ceil32(return_data.size) + (32 * mem[_2944 + mem[_2944]]) + 32
                                            mem[_2944 + ceil32(return_data.size)] = _3004
                                            require return_data.size >= _2971 + (32 * _3004) + 32
                                            t = _2944 + _2971 + 32
                                            u = _2944 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3004:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3004 - 1 < _3004
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _3004 - 1) + _2944 + ceil32(return_data.size) + 32]
                                else:
                                    _2268 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2268] = return_data.size
                                    mem[_2268 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2302 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2326 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = _762 + 32
                                        u = mem[64] + 100
                                        while s < _2326:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2302 + (32 * _2326) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2972 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2972] = return_data.size
                                                mem[_2972 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2945 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2973 = mem[_2945]
                                            require mem[_2945] <= test266151307()
                                            require _2945 + return_data.size > _2945 + mem[_2945] + 31
                                            _3005 = mem[_2945 + mem[_2945]]
                                            require mem[_2945 + mem[_2945]] <= test266151307()
                                            require (32 * mem[_2945 + mem[_2945]]) + 32 >= 0 and _2945 + ceil32(return_data.size) + (32 * mem[_2945 + mem[_2945]]) + 32 <= test266151307()
                                            mem[64] = _2945 + ceil32(return_data.size) + (32 * mem[_2945 + mem[_2945]]) + 32
                                            mem[_2945 + ceil32(return_data.size)] = _3005
                                            require return_data.size >= _2973 + (32 * _3005) + 32
                                            t = _2945 + _2973 + 32
                                            u = _2945 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3005:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3005 - 1 < _3005
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _3005 - 1) + _2945 + ceil32(return_data.size) + 32]
                            else:
                                _2254 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2269 = mem[_2254]
                                require mem[_2254] <= test266151307()
                                require _2254 + return_data.size > _2254 + mem[_2254] + 31
                                _2287 = mem[_2254 + mem[_2254]]
                                require mem[_2254 + mem[_2254]] <= test266151307()
                                require (32 * mem[_2254 + mem[_2254]]) + 32 >= 0 and _2254 + ceil32(return_data.size) + (32 * mem[_2254 + mem[_2254]]) + 32 <= test266151307()
                                mem[64] = _2254 + ceil32(return_data.size) + (32 * mem[_2254 + mem[_2254]]) + 32
                                mem[_2254 + ceil32(return_data.size)] = _2287
                                require return_data.size >= _2269 + (32 * _2287) + 32
                                t = _2254 + _2269 + 32
                                u = _2254 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2287:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _2287 - 1 < _2287
                                require 1 < mem[_762 + 96]
                                mem[_762 + 160] = mem[(32 * _2287 - 1) + _2254 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2997 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3026 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = _762 + 32
                                    u = mem[64] + 100
                                    while s < _3026:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2997 + (32 * _3026) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3520 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3520] = return_data.size
                                            mem[_3520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3489 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3521 = mem[_3489]
                                        require mem[_3489] <= test266151307()
                                        require _3489 + return_data.size > _3489 + mem[_3489] + 31
                                        _3555 = mem[_3489 + mem[_3489]]
                                        require mem[_3489 + mem[_3489]] <= test266151307()
                                        require (32 * mem[_3489 + mem[_3489]]) + 32 >= 0 and _3489 + ceil32(return_data.size) + (32 * mem[_3489 + mem[_3489]]) + 32 <= test266151307()
                                        mem[64] = _3489 + ceil32(return_data.size) + (32 * mem[_3489 + mem[_3489]]) + 32
                                        mem[_3489 + ceil32(return_data.size)] = _3555
                                        require return_data.size >= _3521 + (32 * _3555) + 32
                                        t = _3489 + _3521 + 32
                                        u = _3489 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3555:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3555 - 1 < _3555
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3555 - 1) + _3489 + ceil32(return_data.size) + 32]
                    else:
                        _1512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1512] = return_data.size
                        mem[_1512 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1537 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = _762 + 32
                                u = mem[64] + 100
                                while s < _1537:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1537) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2270 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2270] = return_data.size
                                        mem[_2270 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2255 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2271 = mem[_2255]
                                    require mem[_2255] <= test266151307()
                                    require _2255 + return_data.size > _2255 + mem[_2255] + 31
                                    _2288 = mem[_2255 + mem[_2255]]
                                    require mem[_2255 + mem[_2255]] <= test266151307()
                                    require (32 * mem[_2255 + mem[_2255]]) + 32 >= 0 and _2255 + ceil32(return_data.size) + (32 * mem[_2255 + mem[_2255]]) + 32 <= test266151307()
                                    mem[64] = _2255 + ceil32(return_data.size) + (32 * mem[_2255 + mem[_2255]]) + 32
                                    mem[_2255 + ceil32(return_data.size)] = _2288
                                    require return_data.size >= _2271 + (32 * _2288) + 32
                                    t = _2255 + _2271 + 32
                                    u = _2255 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2288:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2288 - 1 < _2288
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2288 - 1) + _2255 + ceil32(return_data.size) + 32]
                        else:
                            _1523 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1533 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = _762 + 32
                            u = mem[64] + 100
                            while s < _1533:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1523 + (32 * _1533) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2327 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = _762 + 32
                                        u = mem[64] + 100
                                        while s < _2327:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2327) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2974 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2974] = return_data.size
                                                mem[_2974 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2950 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2975 = mem[_2950]
                                            require mem[_2950] <= test266151307()
                                            require _2950 + return_data.size > _2950 + mem[_2950] + 31
                                            _3007 = mem[_2950 + mem[_2950]]
                                            require mem[_2950 + mem[_2950]] <= test266151307()
                                            require (32 * mem[_2950 + mem[_2950]]) + 32 >= 0 and _2950 + ceil32(return_data.size) + (32 * mem[_2950 + mem[_2950]]) + 32 <= test266151307()
                                            mem[64] = _2950 + ceil32(return_data.size) + (32 * mem[_2950 + mem[_2950]]) + 32
                                            mem[_2950 + ceil32(return_data.size)] = _3007
                                            require return_data.size >= _2975 + (32 * _3007) + 32
                                            t = _2950 + _2975 + 32
                                            u = _2950 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3007:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3007 - 1 < _3007
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _3007 - 1) + _2950 + ceil32(return_data.size) + 32]
                                else:
                                    _2272 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2272] = return_data.size
                                    mem[_2272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2328 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = _762 + 32
                                        u = mem[64] + 100
                                        while s < _2328:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2328) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2976 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2976] = return_data.size
                                                mem[_2976 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2951 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2977 = mem[_2951]
                                            require mem[_2951] <= test266151307()
                                            require _2951 + return_data.size > _2951 + mem[_2951] + 31
                                            _3008 = mem[_2951 + mem[_2951]]
                                            require mem[_2951 + mem[_2951]] <= test266151307()
                                            require (32 * mem[_2951 + mem[_2951]]) + 32 >= 0 and _2951 + ceil32(return_data.size) + (32 * mem[_2951 + mem[_2951]]) + 32 <= test266151307()
                                            mem[64] = _2951 + ceil32(return_data.size) + (32 * mem[_2951 + mem[_2951]]) + 32
                                            mem[_2951 + ceil32(return_data.size)] = _3008
                                            require return_data.size >= _2977 + (32 * _3008) + 32
                                            t = _2951 + _2977 + 32
                                            u = _2951 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3008:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3008 - 1 < _3008
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _3008 - 1) + _2951 + ceil32(return_data.size) + 32]
                            else:
                                _2256 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2273 = mem[_2256]
                                require mem[_2256] <= test266151307()
                                require _2256 + return_data.size > _2256 + mem[_2256] + 31
                                _2289 = mem[_2256 + mem[_2256]]
                                require mem[_2256 + mem[_2256]] <= test266151307()
                                require (32 * mem[_2256 + mem[_2256]]) + 32 >= 0 and _2256 + ceil32(return_data.size) + (32 * mem[_2256 + mem[_2256]]) + 32 <= test266151307()
                                mem[64] = _2256 + ceil32(return_data.size) + (32 * mem[_2256 + mem[_2256]]) + 32
                                mem[_2256 + ceil32(return_data.size)] = _2289
                                require return_data.size >= _2273 + (32 * _2289) + 32
                                t = _2256 + _2273 + 32
                                u = _2256 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2289:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _2289 - 1 < _2289
                                require 1 < mem[_762 + 96]
                                mem[_762 + 160] = mem[(32 * _2289 - 1) + _2256 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3031 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = _762 + 32
                                    u = mem[64] + 100
                                    while s < _3031:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3031) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3522 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3522] = return_data.size
                                            mem[_3522 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3494 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3523 = mem[_3494]
                                        require mem[_3494] <= test266151307()
                                        require _3494 + return_data.size > _3494 + mem[_3494] + 31
                                        _3556 = mem[_3494 + mem[_3494]]
                                        require mem[_3494 + mem[_3494]] <= test266151307()
                                        require (32 * mem[_3494 + mem[_3494]]) + 32 >= 0 and _3494 + ceil32(return_data.size) + (32 * mem[_3494 + mem[_3494]]) + 32 <= test266151307()
                                        mem[64] = _3494 + ceil32(return_data.size) + (32 * mem[_3494 + mem[_3494]]) + 32
                                        mem[_3494 + ceil32(return_data.size)] = _3556
                                        require return_data.size >= _3523 + (32 * _3556) + 32
                                        t = _3494 + _3523 + 32
                                        u = _3494 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3556:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3556 - 1 < _3556
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3556 - 1) + _3494 + ceil32(return_data.size) + 32]
                else:
                    _1504 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1513 = mem[_1504]
                    require mem[_1504] <= test266151307()
                    require _1504 + return_data.size > _1504 + mem[_1504] + 31
                    _1517 = mem[_1504 + mem[_1504]]
                    require mem[_1504 + mem[_1504]] <= test266151307()
                    require (32 * mem[_1504 + mem[_1504]]) + 32 >= 0 and _1504 + ceil32(return_data.size) + (32 * mem[_1504 + mem[_1504]]) + 32 <= test266151307()
                    mem[64] = _1504 + ceil32(return_data.size) + (32 * mem[_1504 + mem[_1504]]) + 32
                    mem[_1504 + ceil32(return_data.size)] = _1517
                    require return_data.size >= _1513 + (32 * _1517) + 32
                    t = _1504 + _1513 + 32
                    u = _1504 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1517:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require _1517 - 1 < _1517
                    require 0 < mem[_762 + 96]
                    mem[_762 + 128] = mem[(32 * _1517 - 1) + _1504 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2290 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2319 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = _762 + 32
                            u = mem[64] + 100
                            while s < _2319:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2290 + (32 * _2319) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _2978 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2978] = return_data.size
                                    mem[_2978 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2954 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2979 = mem[_2954]
                                require mem[_2954] <= test266151307()
                                require _2954 + return_data.size > _2954 + mem[_2954] + 31
                                _3010 = mem[_2954 + mem[_2954]]
                                require mem[_2954 + mem[_2954]] <= test266151307()
                                require (32 * mem[_2954 + mem[_2954]]) + 32 >= 0 and _2954 + ceil32(return_data.size) + (32 * mem[_2954 + mem[_2954]]) + 32 <= test266151307()
                                mem[64] = _2954 + ceil32(return_data.size) + (32 * mem[_2954 + mem[_2954]]) + 32
                                mem[_2954 + ceil32(return_data.size)] = _3010
                                require return_data.size >= _2979 + (32 * _3010) + 32
                                t = _2954 + _2979 + 32
                                u = _2954 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3010:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3010 - 1 < _3010
                                require 2 < mem[_762 + 96]
                                mem[_762 + 192] = mem[(32 * _3010 - 1) + _2954 + ceil32(return_data.size) + 32]
                    else:
                        _2282 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _2308 = mem[_762]
                        mem[mem[64] + 68] = mem[_762]
                        s = 0
                        t = _762 + 32
                        u = mem[64] + 100
                        while s < _2308:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2282 + (32 * _2308) + -mem[64] + 96]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3060 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = _762 + 32
                                    u = mem[64] + 100
                                    while s < _3060:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3060) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3524 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3524] = return_data.size
                                            mem[_3524 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3497 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3525 = mem[_3497]
                                        require mem[_3497] <= test266151307()
                                        require _3497 + return_data.size > _3497 + mem[_3497] + 31
                                        _3557 = mem[_3497 + mem[_3497]]
                                        require mem[_3497 + mem[_3497]] <= test266151307()
                                        require (32 * mem[_3497 + mem[_3497]]) + 32 >= 0 and _3497 + ceil32(return_data.size) + (32 * mem[_3497 + mem[_3497]]) + 32 <= test266151307()
                                        mem[64] = _3497 + ceil32(return_data.size) + (32 * mem[_3497 + mem[_3497]]) + 32
                                        mem[_3497 + ceil32(return_data.size)] = _3557
                                        require return_data.size >= _3525 + (32 * _3557) + 32
                                        t = _3497 + _3525 + 32
                                        u = _3497 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3557:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3557 - 1 < _3557
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3557 - 1) + _3497 + ceil32(return_data.size) + 32]
                            else:
                                _2980 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2980] = return_data.size
                                mem[_2980 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3061 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = _762 + 32
                                    u = mem[64] + 100
                                    while s < _3061:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3061) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3526 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3526] = return_data.size
                                            mem[_3526 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3498 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3527 = mem[_3498]
                                        require mem[_3498] <= test266151307()
                                        require _3498 + return_data.size > _3498 + mem[_3498] + 31
                                        _3558 = mem[_3498 + mem[_3498]]
                                        require mem[_3498 + mem[_3498]] <= test266151307()
                                        require (32 * mem[_3498 + mem[_3498]]) + 32 >= 0 and _3498 + ceil32(return_data.size) + (32 * mem[_3498 + mem[_3498]]) + 32 <= test266151307()
                                        mem[64] = _3498 + ceil32(return_data.size) + (32 * mem[_3498 + mem[_3498]]) + 32
                                        mem[_3498 + ceil32(return_data.size)] = _3558
                                        require return_data.size >= _3527 + (32 * _3558) + 32
                                        t = _3498 + _3527 + 32
                                        u = _3498 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3558:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3558 - 1 < _3558
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3558 - 1) + _3498 + ceil32(return_data.size) + 32]
                        else:
                            _2955 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2981 = mem[_2955]
                            require mem[_2955] <= test266151307()
                            require _2955 + return_data.size > _2955 + mem[_2955] + 31
                            _3011 = mem[_2955 + mem[_2955]]
                            require mem[_2955 + mem[_2955]] <= test266151307()
                            require (32 * mem[_2955 + mem[_2955]]) + 32 >= 0 and _2955 + ceil32(return_data.size) + (32 * mem[_2955 + mem[_2955]]) + 32 <= test266151307()
                            mem[64] = _2955 + ceil32(return_data.size) + (32 * mem[_2955 + mem[_2955]]) + 32
                            mem[_2955 + ceil32(return_data.size)] = _3011
                            require return_data.size >= _2981 + (32 * _3011) + 32
                            t = _2955 + _2981 + 32
                            u = _2955 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _3011:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _3011 - 1 < _3011
                            require 1 < mem[_762 + 96]
                            mem[_762 + 160] = mem[(32 * _3011 - 1) + _2955 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3577 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = _762 + 32
                                u = mem[64] + 100
                                while s < _3577:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3577) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3837 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3837] = return_data.size
                                        mem[_3837 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3818 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3838 = mem[_3818]
                                    require mem[_3818] <= test266151307()
                                    require _3818 + return_data.size > _3818 + mem[_3818] + 31
                                    _3858 = mem[_3818 + mem[_3818]]
                                    require mem[_3818 + mem[_3818]] <= test266151307()
                                    require (32 * mem[_3818 + mem[_3818]]) + 32 >= 0 and _3818 + ceil32(return_data.size) + (32 * mem[_3818 + mem[_3818]]) + 32 <= test266151307()
                                    mem[64] = _3818 + ceil32(return_data.size) + (32 * mem[_3818 + mem[_3818]]) + 32
                                    mem[_3818 + ceil32(return_data.size)] = _3858
                                    require return_data.size >= _3838 + (32 * _3858) + 32
                                    t = _3818 + _3838 + 32
                                    u = _3818 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3858:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3858 - 1 < _3858
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _3858 - 1) + _3818 + ceil32(return_data.size) + 32]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _762 + 96
            idx = idx + 1
            continue 
        _750 = mem[64]
        mem[mem[64]] = 32
        _751 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _751:
            mem[t] = u + -_750 - 64
            _1490 = mem[s]
            _1495 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _1490 + 32
            x = u + 32
            while v < _1495:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _1495 + 1
            w = _1490 + (32 * _1495) + 64
            t = t + 32
            u = u + (32 * _1495) + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _1578 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1578]
            mem[_1578 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
            require 1 < mem[_1578]
            mem[_1578 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_1578 + 96] = 3
            mem[64] = _1578 + 224
            mem[_1578 + 128 len 96] = call.data[calldata.size len 96]
            if not bool(cd[((32 * idx) + cd[4] + 36)]):
                if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                        mem[_1578 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1578 + 228] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_1578 + 260] = 64
                        mem[_1578 + 292] = mem[_1578]
                        s = 0
                        t = _1578 + 32
                        u = _1578 + 324
                        while s < mem[_1578]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1578 + (32 * mem[_1578]) + -mem[64] + 320]
                        if not ext_call.success:
                            if return_data.size:
                                _2274 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2274] = return_data.size
                                mem[_2274 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _2259 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2275 = mem[_2259]
                            require mem[_2259] <= test266151307()
                            require _2259 + return_data.size > _2259 + mem[_2259] + 31
                            _2291 = mem[_2259 + mem[_2259]]
                            require mem[_2259 + mem[_2259]] <= test266151307()
                            require (32 * mem[_2259 + mem[_2259]]) + 32 >= 0 and _2259 + ceil32(return_data.size) + (32 * mem[_2259 + mem[_2259]]) + 32 <= test266151307()
                            mem[64] = _2259 + ceil32(return_data.size) + (32 * mem[_2259 + mem[_2259]]) + 32
                            mem[_2259 + ceil32(return_data.size)] = _2291
                            require return_data.size >= _2275 + (32 * _2291) + 32
                            t = _2259 + _2275 + 32
                            u = _2259 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2291:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _2291 - 1 < _2291
                            require 2 < mem[_1578 + 96]
                            mem[_1578 + 192] = mem[(32 * _2291 - 1) + _2259 + ceil32(return_data.size) + 32]
                else:
                    mem[_1578 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1578 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_1578 + 260] = 64
                    mem[_1578 + 292] = mem[_1578]
                    s = 0
                    t = _1578 + 32
                    u = _1578 + 324
                    while s < mem[_1578]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1578 + (32 * mem[_1578]) + -mem[64] + 320]
                    if not ext_call.success:
                        if not return_data.size:
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2311 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2330 = mem[_1578]
                                mem[mem[64] + 68] = mem[_1578]
                                s = 0
                                t = _1578 + 32
                                u = mem[64] + 100
                                while s < _2330:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2311 + (32 * _2330) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2982 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2982] = return_data.size
                                        mem[_2982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2958 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2983 = mem[_2958]
                                    require mem[_2958] <= test266151307()
                                    require _2958 + return_data.size > _2958 + mem[_2958] + 31
                                    _3012 = mem[_2958 + mem[_2958]]
                                    require mem[_2958 + mem[_2958]] <= test266151307()
                                    require (32 * mem[_2958 + mem[_2958]]) + 32 >= 0 and _2958 + ceil32(return_data.size) + (32 * mem[_2958 + mem[_2958]]) + 32 <= test266151307()
                                    mem[64] = _2958 + ceil32(return_data.size) + (32 * mem[_2958 + mem[_2958]]) + 32
                                    mem[_2958 + ceil32(return_data.size)] = _3012
                                    require return_data.size >= _2983 + (32 * _3012) + 32
                                    t = _2958 + _2983 + 32
                                    u = _2958 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3012:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3012 - 1 < _3012
                                    require 2 < mem[_1578 + 96]
                                    mem[_1578 + 192] = mem[(32 * _3012 - 1) + _2958 + ceil32(return_data.size) + 32]
                        else:
                            _2276 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2276] = return_data.size
                            mem[_2276 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2331 = mem[_1578]
                                mem[mem[64] + 68] = mem[_1578]
                                s = 0
                                t = _1578 + 32
                                u = mem[64] + 100
                                while s < _2331:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2331) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2984 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2984] = return_data.size
                                        mem[_2984 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2959 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2985 = mem[_2959]
                                    require mem[_2959] <= test266151307()
                                    require _2959 + return_data.size > _2959 + mem[_2959] + 31
                                    _3013 = mem[_2959 + mem[_2959]]
                                    require mem[_2959 + mem[_2959]] <= test266151307()
                                    require (32 * mem[_2959 + mem[_2959]]) + 32 >= 0 and _2959 + ceil32(return_data.size) + (32 * mem[_2959 + mem[_2959]]) + 32 <= test266151307()
                                    mem[64] = _2959 + ceil32(return_data.size) + (32 * mem[_2959 + mem[_2959]]) + 32
                                    mem[_2959 + ceil32(return_data.size)] = _3013
                                    require return_data.size >= _2985 + (32 * _3013) + 32
                                    t = _2959 + _2985 + 32
                                    u = _2959 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3013:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3013 - 1 < _3013
                                    require 2 < mem[_1578 + 96]
                                    mem[_1578 + 192] = mem[(32 * _3013 - 1) + _2959 + ceil32(return_data.size) + 32]
                    else:
                        _2260 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2277 = mem[_2260]
                        require mem[_2260] <= test266151307()
                        require _2260 + return_data.size > _2260 + mem[_2260] + 31
                        _2292 = mem[_2260 + mem[_2260]]
                        require mem[_2260 + mem[_2260]] <= test266151307()
                        require (32 * mem[_2260 + mem[_2260]]) + 32 >= 0 and _2260 + ceil32(return_data.size) + (32 * mem[_2260 + mem[_2260]]) + 32 <= test266151307()
                        mem[64] = _2260 + ceil32(return_data.size) + (32 * mem[_2260 + mem[_2260]]) + 32
                        mem[_2260 + ceil32(return_data.size)] = _2292
                        require return_data.size >= _2277 + (32 * _2292) + 32
                        t = _2260 + _2277 + 32
                        u = _2260 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2292:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _2292 - 1 < _2292
                        require 1 < mem[_1578 + 96]
                        mem[_1578 + 160] = mem[(32 * _2292 - 1) + _2260 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _3001 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _3040 = mem[_1578]
                            mem[mem[64] + 68] = mem[_1578]
                            s = 0
                            t = _1578 + 32
                            u = mem[64] + 100
                            while s < _3040:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3001 + (32 * _3040) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _3528 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3528] = return_data.size
                                    mem[_3528 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3505 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3529 = mem[_3505]
                                require mem[_3505] <= test266151307()
                                require _3505 + return_data.size > _3505 + mem[_3505] + 31
                                _3560 = mem[_3505 + mem[_3505]]
                                require mem[_3505 + mem[_3505]] <= test266151307()
                                require (32 * mem[_3505 + mem[_3505]]) + 32 >= 0 and _3505 + ceil32(return_data.size) + (32 * mem[_3505 + mem[_3505]]) + 32 <= test266151307()
                                mem[64] = _3505 + ceil32(return_data.size) + (32 * mem[_3505 + mem[_3505]]) + 32
                                mem[_3505 + ceil32(return_data.size)] = _3560
                                require return_data.size >= _3529 + (32 * _3560) + 32
                                t = _3505 + _3529 + 32
                                u = _3505 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3560:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3560 - 1 < _3560
                                require 2 < mem[_1578 + 96]
                                mem[_1578 + 192] = mem[(32 * _3560 - 1) + _3505 + ceil32(return_data.size) + 32]
            else:
                mem[_1578 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1578 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_1578 + 260] = 64
                mem[_1578 + 292] = mem[_1578]
                s = 0
                t = _1578 + 32
                u = _1578 + 324
                while s < mem[_1578]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1578 + (32 * mem[_1578]) + -mem[64] + 320]
                if not ext_call.success:
                    if not return_data.size:
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2345 = mem[_1578]
                                mem[mem[64] + 68] = mem[_1578]
                                s = 0
                                t = _1578 + 32
                                u = mem[64] + 100
                                while s < _2345:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2345) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2986 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2986] = return_data.size
                                        mem[_2986 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2962 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2987 = mem[_2962]
                                    require mem[_2962] <= test266151307()
                                    require _2962 + return_data.size > _2962 + mem[_2962] + 31
                                    _3015 = mem[_2962 + mem[_2962]]
                                    require mem[_2962 + mem[_2962]] <= test266151307()
                                    require (32 * mem[_2962 + mem[_2962]]) + 32 >= 0 and _2962 + ceil32(return_data.size) + (32 * mem[_2962 + mem[_2962]]) + 32 <= test266151307()
                                    mem[64] = _2962 + ceil32(return_data.size) + (32 * mem[_2962 + mem[_2962]]) + 32
                                    mem[_2962 + ceil32(return_data.size)] = _3015
                                    require return_data.size >= _2987 + (32 * _3015) + 32
                                    t = _2962 + _2987 + 32
                                    u = _2962 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3015:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3015 - 1 < _3015
                                    require 2 < mem[_1578 + 96]
                                    mem[_1578 + 192] = mem[(32 * _3015 - 1) + _2962 + ceil32(return_data.size) + 32]
                        else:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2333 = mem[_1578]
                            mem[mem[64] + 68] = mem[_1578]
                            s = 0
                            t = _1578 + 32
                            u = mem[64] + 100
                            while s < _2333:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2333) + 32]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3063 = mem[_1578]
                                        mem[mem[64] + 68] = mem[_1578]
                                        s = 0
                                        t = _1578 + 32
                                        u = mem[64] + 100
                                        while s < _3063:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3063) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3530 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3530] = return_data.size
                                                mem[_3530 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3508 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3531 = mem[_3508]
                                            require mem[_3508] <= test266151307()
                                            require _3508 + return_data.size > _3508 + mem[_3508] + 31
                                            _3561 = mem[_3508 + mem[_3508]]
                                            require mem[_3508 + mem[_3508]] <= test266151307()
                                            require (32 * mem[_3508 + mem[_3508]]) + 32 >= 0 and _3508 + ceil32(return_data.size) + (32 * mem[_3508 + mem[_3508]]) + 32 <= test266151307()
                                            mem[64] = _3508 + ceil32(return_data.size) + (32 * mem[_3508 + mem[_3508]]) + 32
                                            mem[_3508 + ceil32(return_data.size)] = _3561
                                            require return_data.size >= _3531 + (32 * _3561) + 32
                                            t = _3508 + _3531 + 32
                                            u = _3508 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3561:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3561 - 1 < _3561
                                            require 2 < mem[_1578 + 96]
                                            mem[_1578 + 192] = mem[(32 * _3561 - 1) + _3508 + ceil32(return_data.size) + 32]
                                else:
                                    _2988 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2988] = return_data.size
                                    mem[_2988 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _3044 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3064 = mem[_1578]
                                        mem[mem[64] + 68] = mem[_1578]
                                        s = 0
                                        t = _1578 + 32
                                        u = mem[64] + 100
                                        while s < _3064:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3044 + (32 * _3064) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3532 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3532] = return_data.size
                                                mem[_3532 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3509 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3533 = mem[_3509]
                                            require mem[_3509] <= test266151307()
                                            require _3509 + return_data.size > _3509 + mem[_3509] + 31
                                            _3562 = mem[_3509 + mem[_3509]]
                                            require mem[_3509 + mem[_3509]] <= test266151307()
                                            require (32 * mem[_3509 + mem[_3509]]) + 32 >= 0 and _3509 + ceil32(return_data.size) + (32 * mem[_3509 + mem[_3509]]) + 32 <= test266151307()
                                            mem[64] = _3509 + ceil32(return_data.size) + (32 * mem[_3509 + mem[_3509]]) + 32
                                            mem[_3509 + ceil32(return_data.size)] = _3562
                                            require return_data.size >= _3533 + (32 * _3562) + 32
                                            t = _3509 + _3533 + 32
                                            u = _3509 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3562:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3562 - 1 < _3562
                                            require 2 < mem[_1578 + 96]
                                            mem[_1578 + 192] = mem[(32 * _3562 - 1) + _3509 + ceil32(return_data.size) + 32]
                            else:
                                _2963 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2989 = mem[_2963]
                                require mem[_2963] <= test266151307()
                                require _2963 + return_data.size > _2963 + mem[_2963] + 31
                                _3016 = mem[_2963 + mem[_2963]]
                                require mem[_2963 + mem[_2963]] <= test266151307()
                                require (32 * mem[_2963 + mem[_2963]]) + 32 >= 0 and _2963 + ceil32(return_data.size) + (32 * mem[_2963 + mem[_2963]]) + 32 <= test266151307()
                                mem[64] = _2963 + ceil32(return_data.size) + (32 * mem[_2963 + mem[_2963]]) + 32
                                mem[_2963 + ceil32(return_data.size)] = _3016
                                require return_data.size >= _2989 + (32 * _3016) + 32
                                t = _2963 + _2989 + 32
                                u = _2963 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3016:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3016 - 1 < _3016
                                require 1 < mem[_1578 + 96]
                                mem[_1578 + 160] = mem[(32 * _3016 - 1) + _2963 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3552 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3584 = mem[_1578]
                                    mem[mem[64] + 68] = mem[_1578]
                                    s = 0
                                    t = _1578 + 32
                                    u = mem[64] + 100
                                    while s < _3584:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3552 + (32 * _3584) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3839 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3839] = return_data.size
                                            mem[_3839 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3825 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3840 = mem[_3825]
                                        require mem[_3825] <= test266151307()
                                        require _3825 + return_data.size > _3825 + mem[_3825] + 31
                                        _3859 = mem[_3825 + mem[_3825]]
                                        require mem[_3825 + mem[_3825]] <= test266151307()
                                        require (32 * mem[_3825 + mem[_3825]]) + 32 >= 0 and _3825 + ceil32(return_data.size) + (32 * mem[_3825 + mem[_3825]]) + 32 <= test266151307()
                                        mem[64] = _3825 + ceil32(return_data.size) + (32 * mem[_3825 + mem[_3825]]) + 32
                                        mem[_3825 + ceil32(return_data.size)] = _3859
                                        require return_data.size >= _3840 + (32 * _3859) + 32
                                        t = _3825 + _3840 + 32
                                        u = _3825 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3859:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3859 - 1 < _3859
                                        require 2 < mem[_1578 + 96]
                                        mem[_1578 + 192] = mem[(32 * _3859 - 1) + _3825 + ceil32(return_data.size) + 32]
                    else:
                        _2278 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2278] = return_data.size
                        mem[_2278 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2323 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2346 = mem[_1578]
                                mem[mem[64] + 68] = mem[_1578]
                                s = 0
                                t = _1578 + 32
                                u = mem[64] + 100
                                while s < _2346:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2323 + (32 * _2346) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2990 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2990] = return_data.size
                                        mem[_2990 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2964 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2991 = mem[_2964]
                                    require mem[_2964] <= test266151307()
                                    require _2964 + return_data.size > _2964 + mem[_2964] + 31
                                    _3017 = mem[_2964 + mem[_2964]]
                                    require mem[_2964 + mem[_2964]] <= test266151307()
                                    require (32 * mem[_2964 + mem[_2964]]) + 32 >= 0 and _2964 + ceil32(return_data.size) + (32 * mem[_2964 + mem[_2964]]) + 32 <= test266151307()
                                    mem[64] = _2964 + ceil32(return_data.size) + (32 * mem[_2964 + mem[_2964]]) + 32
                                    mem[_2964 + ceil32(return_data.size)] = _3017
                                    require return_data.size >= _2991 + (32 * _3017) + 32
                                    t = _2964 + _2991 + 32
                                    u = _2964 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3017:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3017 - 1 < _3017
                                    require 2 < mem[_1578 + 96]
                                    mem[_1578 + 192] = mem[(32 * _3017 - 1) + _2964 + ceil32(return_data.size) + 32]
                        else:
                            _2314 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2335 = mem[_1578]
                            mem[mem[64] + 68] = mem[_1578]
                            s = 0
                            t = _1578 + 32
                            u = mem[64] + 100
                            while s < _2335:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2314 + (32 * _2335) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _3047 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3065 = mem[_1578]
                                        mem[mem[64] + 68] = mem[_1578]
                                        s = 0
                                        t = _1578 + 32
                                        u = mem[64] + 100
                                        while s < _3065:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3047 + (32 * _3065) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3534 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3534] = return_data.size
                                                mem[_3534 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3514 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3535 = mem[_3514]
                                            require mem[_3514] <= test266151307()
                                            require _3514 + return_data.size > _3514 + mem[_3514] + 31
                                            _3564 = mem[_3514 + mem[_3514]]
                                            require mem[_3514 + mem[_3514]] <= test266151307()
                                            require (32 * mem[_3514 + mem[_3514]]) + 32 >= 0 and _3514 + ceil32(return_data.size) + (32 * mem[_3514 + mem[_3514]]) + 32 <= test266151307()
                                            mem[64] = _3514 + ceil32(return_data.size) + (32 * mem[_3514 + mem[_3514]]) + 32
                                            mem[_3514 + ceil32(return_data.size)] = _3564
                                            require return_data.size >= _3535 + (32 * _3564) + 32
                                            t = _3514 + _3535 + 32
                                            u = _3514 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3564:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3564 - 1 < _3564
                                            require 2 < mem[_1578 + 96]
                                            mem[_1578 + 192] = mem[(32 * _3564 - 1) + _3514 + ceil32(return_data.size) + 32]
                                else:
                                    _2992 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2992] = return_data.size
                                    mem[_2992 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _3048 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3066 = mem[_1578]
                                        mem[mem[64] + 68] = mem[_1578]
                                        s = 0
                                        t = _1578 + 32
                                        u = mem[64] + 100
                                        while s < _3066:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3048 + (32 * _3066) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3536 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3536] = return_data.size
                                                mem[_3536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3515 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3537 = mem[_3515]
                                            require mem[_3515] <= test266151307()
                                            require _3515 + return_data.size > _3515 + mem[_3515] + 31
                                            _3565 = mem[_3515 + mem[_3515]]
                                            require mem[_3515 + mem[_3515]] <= test266151307()
                                            require (32 * mem[_3515 + mem[_3515]]) + 32 >= 0 and _3515 + ceil32(return_data.size) + (32 * mem[_3515 + mem[_3515]]) + 32 <= test266151307()
                                            mem[64] = _3515 + ceil32(return_data.size) + (32 * mem[_3515 + mem[_3515]]) + 32
                                            mem[_3515 + ceil32(return_data.size)] = _3565
                                            require return_data.size >= _3537 + (32 * _3565) + 32
                                            t = _3515 + _3537 + 32
                                            u = _3515 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3565:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3565 - 1 < _3565
                                            require 2 < mem[_1578 + 96]
                                            mem[_1578 + 192] = mem[(32 * _3565 - 1) + _3515 + ceil32(return_data.size) + 32]
                            else:
                                _2965 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2993 = mem[_2965]
                                require mem[_2965] <= test266151307()
                                require _2965 + return_data.size > _2965 + mem[_2965] + 31
                                _3018 = mem[_2965 + mem[_2965]]
                                require mem[_2965 + mem[_2965]] <= test266151307()
                                require (32 * mem[_2965 + mem[_2965]]) + 32 >= 0 and _2965 + ceil32(return_data.size) + (32 * mem[_2965 + mem[_2965]]) + 32 <= test266151307()
                                mem[64] = _2965 + ceil32(return_data.size) + (32 * mem[_2965 + mem[_2965]]) + 32
                                mem[_2965 + ceil32(return_data.size)] = _3018
                                require return_data.size >= _2993 + (32 * _3018) + 32
                                t = _2965 + _2993 + 32
                                u = _2965 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3018:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3018 - 1 < _3018
                                require 1 < mem[_1578 + 96]
                                mem[_1578 + 160] = mem[(32 * _3018 - 1) + _2965 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3554 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3589 = mem[_1578]
                                    mem[mem[64] + 68] = mem[_1578]
                                    s = 0
                                    t = _1578 + 32
                                    u = mem[64] + 100
                                    while s < _3589:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3554 + (32 * _3589) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3841 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3841] = return_data.size
                                            mem[_3841 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3830 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3842 = mem[_3830]
                                        require mem[_3830] <= test266151307()
                                        require _3830 + return_data.size > _3830 + mem[_3830] + 31
                                        _3860 = mem[_3830 + mem[_3830]]
                                        require mem[_3830 + mem[_3830]] <= test266151307()
                                        require (32 * mem[_3830 + mem[_3830]]) + 32 >= 0 and _3830 + ceil32(return_data.size) + (32 * mem[_3830 + mem[_3830]]) + 32 <= test266151307()
                                        mem[64] = _3830 + ceil32(return_data.size) + (32 * mem[_3830 + mem[_3830]]) + 32
                                        mem[_3830 + ceil32(return_data.size)] = _3860
                                        require return_data.size >= _3842 + (32 * _3860) + 32
                                        t = _3830 + _3842 + 32
                                        u = _3830 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3860:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3860 - 1 < _3860
                                        require 2 < mem[_1578 + 96]
                                        mem[_1578 + 192] = mem[(32 * _3860 - 1) + _3830 + ceil32(return_data.size) + 32]
                else:
                    _2261 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2279 = mem[_2261]
                    require mem[_2261] <= test266151307()
                    require _2261 + return_data.size > _2261 + mem[_2261] + 31
                    _2293 = mem[_2261 + mem[_2261]]
                    require mem[_2261 + mem[_2261]] <= test266151307()
                    require (32 * mem[_2261 + mem[_2261]]) + 32 >= 0 and _2261 + ceil32(return_data.size) + (32 * mem[_2261 + mem[_2261]]) + 32 <= test266151307()
                    mem[64] = _2261 + ceil32(return_data.size) + (32 * mem[_2261 + mem[_2261]]) + 32
                    mem[_2261 + ceil32(return_data.size)] = _2293
                    require return_data.size >= _2279 + (32 * _2293) + 32
                    t = _2261 + _2279 + 32
                    u = _2261 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2293:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require _2293 - 1 < _2293
                    require 0 < mem[_1578 + 96]
                    mem[_1578 + 128] = mem[(32 * _2293 - 1) + _2261 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _3019 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _3057 = mem[_1578]
                            mem[mem[64] + 68] = mem[_1578]
                            s = 0
                            t = _1578 + 32
                            u = mem[64] + 100
                            while s < _3057:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3019 + (32 * _3057) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _3538 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3538] = return_data.size
                                    mem[_3538 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3518 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3539 = mem[_3518]
                                require mem[_3518] <= test266151307()
                                require _3518 + return_data.size > _3518 + mem[_3518] + 31
                                _3567 = mem[_3518 + mem[_3518]]
                                require mem[_3518 + mem[_3518]] <= test266151307()
                                require (32 * mem[_3518 + mem[_3518]]) + 32 >= 0 and _3518 + ceil32(return_data.size) + (32 * mem[_3518 + mem[_3518]]) + 32 <= test266151307()
                                mem[64] = _3518 + ceil32(return_data.size) + (32 * mem[_3518 + mem[_3518]]) + 32
                                mem[_3518 + ceil32(return_data.size)] = _3567
                                require return_data.size >= _3539 + (32 * _3567) + 32
                                t = _3518 + _3539 + 32
                                u = _3518 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3567:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3567 - 1 < _3567
                                require 2 < mem[_1578 + 96]
                                mem[_1578 + 192] = mem[(32 * _3567 - 1) + _3518 + ceil32(return_data.size) + 32]
                    else:
                        _3002 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _3050 = mem[_1578]
                        mem[mem[64] + 68] = mem[_1578]
                        s = 0
                        t = _1578 + 32
                        u = mem[64] + 100
                        while s < _3050:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3002 + (32 * _3050) + -mem[64] + 96]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3599 = mem[_1578]
                                    mem[mem[64] + 68] = mem[_1578]
                                    s = 0
                                    t = _1578 + 32
                                    u = mem[64] + 100
                                    while s < _3599:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3599) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3843 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3843] = return_data.size
                                            mem[_3843 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3833 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3844 = mem[_3833]
                                        require mem[_3833] <= test266151307()
                                        require _3833 + return_data.size > _3833 + mem[_3833] + 31
                                        _3861 = mem[_3833 + mem[_3833]]
                                        require mem[_3833 + mem[_3833]] <= test266151307()
                                        require (32 * mem[_3833 + mem[_3833]]) + 32 >= 0 and _3833 + ceil32(return_data.size) + (32 * mem[_3833 + mem[_3833]]) + 32 <= test266151307()
                                        mem[64] = _3833 + ceil32(return_data.size) + (32 * mem[_3833 + mem[_3833]]) + 32
                                        mem[_3833 + ceil32(return_data.size)] = _3861
                                        require return_data.size >= _3844 + (32 * _3861) + 32
                                        t = _3833 + _3844 + 32
                                        u = _3833 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3861:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3861 - 1 < _3861
                                        require 2 < mem[_1578 + 96]
                                        mem[_1578 + 192] = mem[(32 * _3861 - 1) + _3833 + ceil32(return_data.size) + 32]
                            else:
                                _3540 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_3540] = return_data.size
                                mem[_3540 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3593 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3600 = mem[_1578]
                                    mem[mem[64] + 68] = mem[_1578]
                                    s = 0
                                    t = _1578 + 32
                                    u = mem[64] + 100
                                    while s < _3600:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3593 + (32 * _3600) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3845 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3845] = return_data.size
                                            mem[_3845 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3834 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3846 = mem[_3834]
                                        require mem[_3834] <= test266151307()
                                        require _3834 + return_data.size > _3834 + mem[_3834] + 31
                                        _3862 = mem[_3834 + mem[_3834]]
                                        require mem[_3834 + mem[_3834]] <= test266151307()
                                        require (32 * mem[_3834 + mem[_3834]]) + 32 >= 0 and _3834 + ceil32(return_data.size) + (32 * mem[_3834 + mem[_3834]]) + 32 <= test266151307()
                                        mem[64] = _3834 + ceil32(return_data.size) + (32 * mem[_3834 + mem[_3834]]) + 32
                                        mem[_3834 + ceil32(return_data.size)] = _3862
                                        require return_data.size >= _3846 + (32 * _3862) + 32
                                        t = _3834 + _3846 + 32
                                        u = _3834 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3862:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3862 - 1 < _3862
                                        require 2 < mem[_1578 + 96]
                                        mem[_1578 + 192] = mem[(32 * _3862 - 1) + _3834 + ceil32(return_data.size) + 32]
                        else:
                            _3519 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3541 = mem[_3519]
                            require mem[_3519] <= test266151307()
                            require _3519 + return_data.size > _3519 + mem[_3519] + 31
                            _3568 = mem[_3519 + mem[_3519]]
                            require mem[_3519 + mem[_3519]] <= test266151307()
                            require (32 * mem[_3519 + mem[_3519]]) + 32 >= 0 and _3519 + ceil32(return_data.size) + (32 * mem[_3519 + mem[_3519]]) + 32 <= test266151307()
                            mem[64] = _3519 + ceil32(return_data.size) + (32 * mem[_3519 + mem[_3519]]) + 32
                            mem[_3519 + ceil32(return_data.size)] = _3568
                            require return_data.size >= _3541 + (32 * _3568) + 32
                            t = _3519 + _3541 + 32
                            u = _3519 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _3568:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _3568 - 1 < _3568
                            require 1 < mem[_1578 + 96]
                            mem[_1578 + 160] = mem[(32 * _3568 - 1) + _3519 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _3857 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3874 = mem[_1578]
                                mem[mem[64] + 68] = mem[_1578]
                                s = 0
                                t = _1578 + 32
                                u = mem[64] + 100
                                while s < _3874:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _3857 + (32 * _3874) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3953 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3953] = return_data.size
                                        mem[_3953 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3952 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3954 = mem[_3952]
                                    require mem[_3952] <= test266151307()
                                    require _3952 + return_data.size > _3952 + mem[_3952] + 31
                                    _3960 = mem[_3952 + mem[_3952]]
                                    require mem[_3952 + mem[_3952]] <= test266151307()
                                    require (32 * mem[_3952 + mem[_3952]]) + 32 >= 0 and _3952 + ceil32(return_data.size) + (32 * mem[_3952 + mem[_3952]]) + 32 <= test266151307()
                                    mem[64] = _3952 + ceil32(return_data.size) + (32 * mem[_3952 + mem[_3952]]) + 32
                                    mem[_3952 + ceil32(return_data.size)] = _3960
                                    require return_data.size >= _3954 + (32 * _3960) + 32
                                    t = _3952 + _3954 + 32
                                    u = _3952 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3960:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3960 - 1 < _3960
                                    require 2 < mem[_1578 + 96]
                                    mem[_1578 + 192] = mem[(32 * _3960 - 1) + _3952 + ceil32(return_data.size) + 32]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _1578 + 96
            idx = idx + 1
            continue 
        _1496 = mem[64]
        mem[mem[64]] = 32
        _1500 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _1500:
            mem[t] = u + -_1496 - 64
            _2225 = mem[s]
            _2230 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _2225 + 32
            x = u + 32
            while v < _2230:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _2230 + 1
            w = _2225 + (32 * _2230) + 64
            t = t + 32
            u = u + (32 * _2230) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        if arg2:
            mem[(4 * ceil32(return_data.size)) + 196] = arg2
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1335 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
            _1341 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _1341
            require return_data.size >= _1335 + (32 * _1341) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _1341] = mem[(4 * ceil32(return_data.size)) + _1335 + 224 len 32 * _1341]
            require 0 < _1341
            _2589 = mem[(6 * ceil32(return_data.size)) + 224]
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            _2591 = mem[64]
            require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
            mem[_2591] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            idx = 0
            s = arg4 + cd[(arg4 + 68)] + 68
            t = _2591 + 32
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
            _3807 = mem[64]
            mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
            if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                require 0 < mem[_3807]
                mem[_3807 + 32] = address(ext_call.return_data[0])
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[_2591]
                    require idx + 1 < mem[_3807]
                    mem[(32 * idx + 1) + _3807 + 32] = mem[(32 * idx) + _2591 + 44 len 20]
                    idx = idx + 1
                    continue 
                require mem[_3807] - 1 < mem[_3807]
                mem[(32 * mem[_3807] - 1) + _3807 + 32] = address(ext_call.return_data[0])
                if cd[(arg4 + 36)] == 1:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _2589
                    mem[mem[64] + 68] = 160
                    _5110 = mem[_3807]
                    mem[mem[64] + 164] = mem[_3807]
                    idx = 0
                    s = _3807 + 32
                    t = mem[64] + 196
                    while idx < _5110:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2589, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5110) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6271 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6307 = mem[_6271]
                    require mem[_6271] <= test266151307()
                    require _6271 + return_data.size > _6271 + mem[_6271] + 31
                    _6343 = mem[_6271 + mem[_6271]]
                    require mem[_6271 + mem[_6271]] <= test266151307()
                    require (32 * mem[_6271 + mem[_6271]]) + 32 >= 0 and _6271 + ceil32(return_data.size) + (32 * mem[_6271 + mem[_6271]]) + 32 <= test266151307()
                    mem[64] = _6271 + ceil32(return_data.size) + (32 * mem[_6271 + mem[_6271]]) + 32
                    mem[_6271 + ceil32(return_data.size)] = _6343
                    require return_data.size >= _6307 + (32 * _6343) + 32
                    mem[_6271 + ceil32(return_data.size) + 32 len 32 * _6343] = mem[_6271 + _6307 + 32 len 32 * _6343]
                    require mem[_3807] - 1 < _6343
                    _7171 = mem[(32 * mem[_3807] - 1) + _6271 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3807] - 1) + _6271 + ceil32(return_data.size) + 32] <= _2589:
                        revert with 0, 'Nope!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2589
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2589
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7351] == bool(mem[_7351])
                    if not mem[_7351]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _7171 - _2589
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _7171 - _2589
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7567] == bool(mem[_7567])
                    if not mem[_7567]:
                        revert with 0, 'Take profit failed!'
                else:
                    if cd[(arg4 + 36)] == 2:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2589
                        mem[mem[64] + 68] = 160
                        _5143 = mem[_3807]
                        mem[mem[64] + 164] = mem[_3807]
                        idx = 0
                        s = _3807 + 32
                        t = mem[64] + 196
                        while idx < _5143:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2589, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5143) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6270 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6306 = mem[_6270]
                        require mem[_6270] <= test266151307()
                        require _6270 + return_data.size > _6270 + mem[_6270] + 31
                        _6342 = mem[_6270 + mem[_6270]]
                        require mem[_6270 + mem[_6270]] <= test266151307()
                        require (32 * mem[_6270 + mem[_6270]]) + 32 >= 0 and _6270 + ceil32(return_data.size) + (32 * mem[_6270 + mem[_6270]]) + 32 <= test266151307()
                        mem[64] = _6270 + ceil32(return_data.size) + (32 * mem[_6270 + mem[_6270]]) + 32
                        mem[_6270 + ceil32(return_data.size)] = _6342
                        require return_data.size >= _6306 + (32 * _6342) + 32
                        mem[_6270 + ceil32(return_data.size) + 32 len 32 * _6342] = mem[_6270 + _6306 + 32 len 32 * _6342]
                        require mem[_3807] - 1 < _6342
                        _7170 = mem[(32 * mem[_3807] - 1) + _6270 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3807] - 1) + _6270 + ceil32(return_data.size) + 32] <= _2589:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2589
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2589
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7350 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7350] == bool(mem[_7350])
                        if not mem[_7350]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7170 - _2589
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7170 - _2589
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7566 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7566] == bool(mem[_7566])
                        if not mem[_7566]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] != 4:
                            if 0 <= _2589:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5253 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5253] == bool(mem[_5253])
                            if not mem[_5253]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = -_2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, -_2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5481 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5481] == bool(mem[_5481])
                            if not mem[_5481]:
                                revert with 0, 'Take profit failed!'
                        else:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2589
                            mem[mem[64] + 68] = 160
                            _5169 = mem[_3807]
                            mem[mem[64] + 164] = mem[_3807]
                            idx = 0
                            s = _3807 + 32
                            t = mem[64] + 196
                            while idx < _5169:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = -1
                            require ext_code.size(stor6)
                            call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _2589, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5169) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6269 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6305 = mem[_6269]
                            require mem[_6269] <= test266151307()
                            require _6269 + return_data.size > _6269 + mem[_6269] + 31
                            _6341 = mem[_6269 + mem[_6269]]
                            require mem[_6269 + mem[_6269]] <= test266151307()
                            require (32 * mem[_6269 + mem[_6269]]) + 32 >= 0 and _6269 + ceil32(return_data.size) + (32 * mem[_6269 + mem[_6269]]) + 32 <= test266151307()
                            mem[64] = _6269 + ceil32(return_data.size) + (32 * mem[_6269 + mem[_6269]]) + 32
                            mem[_6269 + ceil32(return_data.size)] = _6341
                            require return_data.size >= _6305 + (32 * _6341) + 32
                            mem[_6269 + ceil32(return_data.size) + 32 len 32 * _6341] = mem[_6269 + _6305 + 32 len 32 * _6341]
                            require mem[_3807] - 1 < _6341
                            _7169 = mem[(32 * mem[_3807] - 1) + _6269 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3807] - 1) + _6269 + ceil32(return_data.size) + 32] <= _2589:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7349 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7349] == bool(mem[_7349])
                            if not mem[_7349]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7169 - _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7169 - _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7565] == bool(mem[_7565])
                            if not mem[_7565]:
                                revert with 0, 'Take profit failed!'
            else:
                mem[_3807 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                require 0 < mem[_3807]
                mem[_3807 + 32] = address(ext_call.return_data[0])
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[_2591]
                    require idx + 1 < mem[_3807]
                    mem[(32 * idx + 1) + _3807 + 32] = mem[(32 * idx) + _2591 + 44 len 20]
                    idx = idx + 1
                    continue 
                require mem[_3807] - 1 < mem[_3807]
                mem[(32 * mem[_3807] - 1) + _3807 + 32] = address(ext_call.return_data[0])
                if cd[(arg4 + 36)] == 1:
                    _5078 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _2589
                    mem[mem[64] + 68] = 160
                    _5112 = mem[_3807]
                    mem[mem[64] + 164] = mem[_3807]
                    idx = 0
                    s = _3807 + 32
                    t = mem[64] + 196
                    while idx < _5112:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_5078 + 100] = this.address
                    mem[_5078 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5078 + (32 * _5112) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6274 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6310 = mem[_6274]
                    require mem[_6274] <= test266151307()
                    require _6274 + return_data.size > _6274 + mem[_6274] + 31
                    _6346 = mem[_6274 + mem[_6274]]
                    require mem[_6274 + mem[_6274]] <= test266151307()
                    require (32 * mem[_6274 + mem[_6274]]) + 32 >= 0 and _6274 + ceil32(return_data.size) + (32 * mem[_6274 + mem[_6274]]) + 32 <= test266151307()
                    mem[64] = _6274 + ceil32(return_data.size) + (32 * mem[_6274 + mem[_6274]]) + 32
                    mem[_6274 + ceil32(return_data.size)] = _6346
                    require return_data.size >= _6310 + (32 * _6346) + 32
                    mem[_6274 + ceil32(return_data.size) + 32 len 32 * _6346] = mem[_6274 + _6310 + 32 len 32 * _6346]
                    require mem[_3807] - 1 < _6346
                    _7174 = mem[(32 * mem[_3807] - 1) + _6274 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3807] - 1) + _6274 + ceil32(return_data.size) + 32] <= _2589:
                        revert with 0, 'Nope!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2589
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2589
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7354] == bool(mem[_7354])
                    if not mem[_7354]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _7174 - _2589
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _7174 - _2589
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7570 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7570] == bool(mem[_7570])
                    if not mem[_7570]:
                        revert with 0, 'Take profit failed!'
                else:
                    if cd[(arg4 + 36)] != 2:
                        if cd[(arg4 + 36)] != 4:
                            if 0 <= _2589:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5255 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5255] == bool(mem[_5255])
                            if not mem[_5255]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = -_2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, -_2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5483 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5483] == bool(mem[_5483])
                            if not mem[_5483]:
                                revert with 0, 'Take profit failed!'
                        else:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2589
                            mem[mem[64] + 68] = 160
                            _5171 = mem[_3807]
                            mem[mem[64] + 164] = mem[_3807]
                            idx = 0
                            s = _3807 + 32
                            t = mem[64] + 196
                            while idx < _5171:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = -1
                            require ext_code.size(stor6)
                            call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _2589, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5171) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6272 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6308 = mem[_6272]
                            require mem[_6272] <= test266151307()
                            require _6272 + return_data.size > _6272 + mem[_6272] + 31
                            _6344 = mem[_6272 + mem[_6272]]
                            require mem[_6272 + mem[_6272]] <= test266151307()
                            require (32 * mem[_6272 + mem[_6272]]) + 32 >= 0 and _6272 + ceil32(return_data.size) + (32 * mem[_6272 + mem[_6272]]) + 32 <= test266151307()
                            mem[64] = _6272 + ceil32(return_data.size) + (32 * mem[_6272 + mem[_6272]]) + 32
                            mem[_6272 + ceil32(return_data.size)] = _6344
                            require return_data.size >= _6308 + (32 * _6344) + 32
                            mem[_6272 + ceil32(return_data.size) + 32 len 32 * _6344] = mem[_6272 + _6308 + 32 len 32 * _6344]
                            require mem[_3807] - 1 < _6344
                            _7172 = mem[(32 * mem[_3807] - 1) + _6272 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3807] - 1) + _6272 + ceil32(return_data.size) + 32] <= _2589:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7352] == bool(mem[_7352])
                            if not mem[_7352]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7172 - _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7172 - _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7568 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7568] == bool(mem[_7568])
                            if not mem[_7568]:
                                revert with 0, 'Take profit failed!'
                    else:
                        _5090 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2589
                        mem[mem[64] + 68] = 160
                        _5146 = mem[_3807]
                        mem[mem[64] + 164] = mem[_3807]
                        idx = 0
                        s = _3807 + 32
                        t = mem[64] + 196
                        while idx < _5146:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5090 + 100] = this.address
                        mem[_5090 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5090 + (32 * _5146) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6273 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6309 = mem[_6273]
                        require mem[_6273] <= test266151307()
                        require _6273 + return_data.size > _6273 + mem[_6273] + 31
                        _6345 = mem[_6273 + mem[_6273]]
                        require mem[_6273 + mem[_6273]] <= test266151307()
                        require (32 * mem[_6273 + mem[_6273]]) + 32 >= 0 and _6273 + ceil32(return_data.size) + (32 * mem[_6273 + mem[_6273]]) + 32 <= test266151307()
                        mem[64] = _6273 + ceil32(return_data.size) + (32 * mem[_6273 + mem[_6273]]) + 32
                        mem[_6273 + ceil32(return_data.size)] = _6345
                        require return_data.size >= _6309 + (32 * _6345) + 32
                        mem[_6273 + ceil32(return_data.size) + 32 len 32 * _6345] = mem[_6273 + _6309 + 32 len 32 * _6345]
                        require mem[_3807] - 1 < _6345
                        _7173 = mem[(32 * mem[_3807] - 1) + _6273 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3807] - 1) + _6273 + ceil32(return_data.size) + 32] <= _2589:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2589
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2589
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7353 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7353] == bool(mem[_7353])
                        if not mem[_7353]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7173 - _2589
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7173 - _2589
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7569 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7569] == bool(mem[_7569])
                        if not mem[_7569]:
                            revert with 0, 'Take profit failed!'
        else:
            mem[(4 * ceil32(return_data.size)) + 196] = arg3
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1336 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
            _1342 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _1342
            require return_data.size >= _1336 + (32 * _1342) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _1342] = mem[(4 * ceil32(return_data.size)) + _1336 + 224 len 32 * _1342]
            require 0 < _1342
            _2590 = mem[(6 * ceil32(return_data.size)) + 224]
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            _2592 = mem[64]
            require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
            mem[_2592] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            idx = 0
            s = arg4 + cd[(arg4 + 68)] + 68
            t = _2592 + 32
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
            _3808 = mem[64]
            mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
            if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                require 0 < mem[_3808]
                mem[_3808 + 32] = address(ext_call.return_data[0])
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[_2592]
                    require idx + 1 < mem[_3808]
                    mem[(32 * idx + 1) + _3808 + 32] = mem[(32 * idx) + _2592 + 44 len 20]
                    idx = idx + 1
                    continue 
                require mem[_3808] - 1 < mem[_3808]
                mem[(32 * mem[_3808] - 1) + _3808 + 32] = address(ext_call.return_data[0])
                if cd[(arg4 + 36)] == 1:
                    _5079 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _2590
                    mem[mem[64] + 68] = 160
                    _5114 = mem[_3808]
                    mem[mem[64] + 164] = mem[_3808]
                    idx = 0
                    s = _3808 + 32
                    t = mem[64] + 196
                    while idx < _5114:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_5079 + 100] = this.address
                    mem[_5079 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5079 + (32 * _5114) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6277 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6313 = mem[_6277]
                    require mem[_6277] <= test266151307()
                    require _6277 + return_data.size > _6277 + mem[_6277] + 31
                    _6349 = mem[_6277 + mem[_6277]]
                    require mem[_6277 + mem[_6277]] <= test266151307()
                    require (32 * mem[_6277 + mem[_6277]]) + 32 >= 0 and _6277 + ceil32(return_data.size) + (32 * mem[_6277 + mem[_6277]]) + 32 <= test266151307()
                    mem[64] = _6277 + ceil32(return_data.size) + (32 * mem[_6277 + mem[_6277]]) + 32
                    mem[_6277 + ceil32(return_data.size)] = _6349
                    require return_data.size >= _6313 + (32 * _6349) + 32
                    mem[_6277 + ceil32(return_data.size) + 32 len 32 * _6349] = mem[_6277 + _6313 + 32 len 32 * _6349]
                    require mem[_3808] - 1 < _6349
                    _7177 = mem[(32 * mem[_3808] - 1) + _6277 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3808] - 1) + _6277 + ceil32(return_data.size) + 32] <= _2590:
                        revert with 0, 'Nope!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2590
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2590
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7357 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7357] == bool(mem[_7357])
                    if not mem[_7357]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _7177 - _2590
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _7177 - _2590
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7573 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7573] == bool(mem[_7573])
                    if not mem[_7573]:
                        revert with 0, 'Take profit failed!'
                else:
                    if cd[(arg4 + 36)] == 2:
                        _5091 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2590
                        mem[mem[64] + 68] = 160
                        _5149 = mem[_3808]
                        mem[mem[64] + 164] = mem[_3808]
                        idx = 0
                        s = _3808 + 32
                        t = mem[64] + 196
                        while idx < _5149:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5091 + 100] = this.address
                        mem[_5091 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5091 + (32 * _5149) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6276 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6312 = mem[_6276]
                        require mem[_6276] <= test266151307()
                        require _6276 + return_data.size > _6276 + mem[_6276] + 31
                        _6348 = mem[_6276 + mem[_6276]]
                        require mem[_6276 + mem[_6276]] <= test266151307()
                        require (32 * mem[_6276 + mem[_6276]]) + 32 >= 0 and _6276 + ceil32(return_data.size) + (32 * mem[_6276 + mem[_6276]]) + 32 <= test266151307()
                        mem[64] = _6276 + ceil32(return_data.size) + (32 * mem[_6276 + mem[_6276]]) + 32
                        mem[_6276 + ceil32(return_data.size)] = _6348
                        require return_data.size >= _6312 + (32 * _6348) + 32
                        mem[_6276 + ceil32(return_data.size) + 32 len 32 * _6348] = mem[_6276 + _6312 + 32 len 32 * _6348]
                        require mem[_3808] - 1 < _6348
                        _7176 = mem[(32 * mem[_3808] - 1) + _6276 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3808] - 1) + _6276 + ceil32(return_data.size) + 32] <= _2590:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2590
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7356 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7356] == bool(mem[_7356])
                        if not mem[_7356]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7176 - _2590
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7176 - _2590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7572 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7572] == bool(mem[_7572])
                        if not mem[_7572]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] != 4:
                            if 0 <= _2590:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5257 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5257] == bool(mem[_5257])
                            if not mem[_5257]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = -_2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, -_2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5485 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5485] == bool(mem[_5485])
                            if not mem[_5485]:
                                revert with 0, 'Take profit failed!'
                        else:
                            _5113 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2590
                            mem[mem[64] + 68] = 160
                            _5173 = mem[_3808]
                            mem[mem[64] + 164] = mem[_3808]
                            idx = 0
                            s = _3808 + 32
                            t = mem[64] + 196
                            while idx < _5173:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5113 + 100] = this.address
                            mem[_5113 + 132] = -1
                            require ext_code.size(stor6)
                            call stor6.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5113 + (32 * _5173) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6275 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6311 = mem[_6275]
                            require mem[_6275] <= test266151307()
                            require _6275 + return_data.size > _6275 + mem[_6275] + 31
                            _6347 = mem[_6275 + mem[_6275]]
                            require mem[_6275 + mem[_6275]] <= test266151307()
                            require (32 * mem[_6275 + mem[_6275]]) + 32 >= 0 and _6275 + ceil32(return_data.size) + (32 * mem[_6275 + mem[_6275]]) + 32 <= test266151307()
                            mem[64] = _6275 + ceil32(return_data.size) + (32 * mem[_6275 + mem[_6275]]) + 32
                            mem[_6275 + ceil32(return_data.size)] = _6347
                            require return_data.size >= _6311 + (32 * _6347) + 32
                            mem[_6275 + ceil32(return_data.size) + 32 len 32 * _6347] = mem[_6275 + _6311 + 32 len 32 * _6347]
                            require mem[_3808] - 1 < _6347
                            _7175 = mem[(32 * mem[_3808] - 1) + _6275 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3808] - 1) + _6275 + ceil32(return_data.size) + 32] <= _2590:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7355 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7355] == bool(mem[_7355])
                            if not mem[_7355]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7175 - _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7175 - _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7571 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7571] == bool(mem[_7571])
                            if not mem[_7571]:
                                revert with 0, 'Take profit failed!'
            else:
                mem[_3808 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                require 0 < mem[_3808]
                mem[_3808 + 32] = address(ext_call.return_data[0])
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[_2592]
                    require idx + 1 < mem[_3808]
                    mem[(32 * idx + 1) + _3808 + 32] = mem[(32 * idx) + _2592 + 44 len 20]
                    idx = idx + 1
                    continue 
                require mem[_3808] - 1 < mem[_3808]
                mem[(32 * mem[_3808] - 1) + _3808 + 32] = address(ext_call.return_data[0])
                if cd[(arg4 + 36)] == 1:
                    _5080 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _2590
                    mem[mem[64] + 68] = 160
                    _5116 = mem[_3808]
                    mem[mem[64] + 164] = mem[_3808]
                    idx = 0
                    s = _3808 + 32
                    t = mem[64] + 196
                    while idx < _5116:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_5080 + 100] = this.address
                    mem[_5080 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5080 + (32 * _5116) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6280 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6316 = mem[_6280]
                    require mem[_6280] <= test266151307()
                    require _6280 + return_data.size > _6280 + mem[_6280] + 31
                    _6352 = mem[_6280 + mem[_6280]]
                    require mem[_6280 + mem[_6280]] <= test266151307()
                    require (32 * mem[_6280 + mem[_6280]]) + 32 >= 0 and _6280 + ceil32(return_data.size) + (32 * mem[_6280 + mem[_6280]]) + 32 <= test266151307()
                    mem[64] = _6280 + ceil32(return_data.size) + (32 * mem[_6280 + mem[_6280]]) + 32
                    mem[_6280 + ceil32(return_data.size)] = _6352
                    require return_data.size >= _6316 + (32 * _6352) + 32
                    mem[_6280 + ceil32(return_data.size) + 32 len 32 * _6352] = mem[_6280 + _6316 + 32 len 32 * _6352]
                    require mem[_3808] - 1 < _6352
                    _7180 = mem[(32 * mem[_3808] - 1) + _6280 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3808] - 1) + _6280 + ceil32(return_data.size) + 32] <= _2590:
                        revert with 0, 'Nope!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2590
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2590
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7360 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7360] == bool(mem[_7360])
                    if not mem[_7360]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _7180 - _2590
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _7180 - _2590
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7576] == bool(mem[_7576])
                    if not mem[_7576]:
                        revert with 0, 'Take profit failed!'
                else:
                    if cd[(arg4 + 36)] == 2:
                        _5092 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2590
                        mem[mem[64] + 68] = 160
                        _5152 = mem[_3808]
                        mem[mem[64] + 164] = mem[_3808]
                        idx = 0
                        s = _3808 + 32
                        t = mem[64] + 196
                        while idx < _5152:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5092 + 100] = this.address
                        mem[_5092 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5092 + (32 * _5152) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6279 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6315 = mem[_6279]
                        require mem[_6279] <= test266151307()
                        require _6279 + return_data.size > _6279 + mem[_6279] + 31
                        _6351 = mem[_6279 + mem[_6279]]
                        require mem[_6279 + mem[_6279]] <= test266151307()
                        require (32 * mem[_6279 + mem[_6279]]) + 32 >= 0 and _6279 + ceil32(return_data.size) + (32 * mem[_6279 + mem[_6279]]) + 32 <= test266151307()
                        mem[64] = _6279 + ceil32(return_data.size) + (32 * mem[_6279 + mem[_6279]]) + 32
                        mem[_6279 + ceil32(return_data.size)] = _6351
                        require return_data.size >= _6315 + (32 * _6351) + 32
                        mem[_6279 + ceil32(return_data.size) + 32 len 32 * _6351] = mem[_6279 + _6315 + 32 len 32 * _6351]
                        require mem[_3808] - 1 < _6351
                        _7179 = mem[(32 * mem[_3808] - 1) + _6279 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3808] - 1) + _6279 + ceil32(return_data.size) + 32] <= _2590:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2590
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7359 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7359] == bool(mem[_7359])
                        if not mem[_7359]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7179 - _2590
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7179 - _2590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7575] == bool(mem[_7575])
                        if not mem[_7575]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] != 4:
                            if 0 <= _2590:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5259 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5259] == bool(mem[_5259])
                            if not mem[_5259]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = -_2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, -_2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5487 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5487] == bool(mem[_5487])
                            if not mem[_5487]:
                                revert with 0, 'Take profit failed!'
                        else:
                            _5115 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2590
                            mem[mem[64] + 68] = 160
                            _5175 = mem[_3808]
                            mem[mem[64] + 164] = mem[_3808]
                            idx = 0
                            s = _3808 + 32
                            t = mem[64] + 196
                            while idx < _5175:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5115 + 100] = this.address
                            mem[_5115 + 132] = -1
                            require ext_code.size(stor6)
                            call stor6.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5115 + (32 * _5175) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6278 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6314 = mem[_6278]
                            require mem[_6278] <= test266151307()
                            require _6278 + return_data.size > _6278 + mem[_6278] + 31
                            _6350 = mem[_6278 + mem[_6278]]
                            require mem[_6278 + mem[_6278]] <= test266151307()
                            require (32 * mem[_6278 + mem[_6278]]) + 32 >= 0 and _6278 + ceil32(return_data.size) + (32 * mem[_6278 + mem[_6278]]) + 32 <= test266151307()
                            mem[64] = _6278 + ceil32(return_data.size) + (32 * mem[_6278 + mem[_6278]]) + 32
                            mem[_6278 + ceil32(return_data.size)] = _6350
                            require return_data.size >= _6314 + (32 * _6350) + 32
                            mem[_6278 + ceil32(return_data.size) + 32 len 32 * _6350] = mem[_6278 + _6314 + 32 len 32 * _6350]
                            require mem[_3808] - 1 < _6350
                            _7178 = mem[(32 * mem[_3808] - 1) + _6278 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3808] - 1) + _6278 + ceil32(return_data.size) + 32] <= _2590:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7358 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7358] == bool(mem[_7358])
                            if not mem[_7358]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7178 - _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7178 - _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7574 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7574] == bool(mem[_7574])
                            if not mem[_7574]:
                                revert with 0, 'Take profit failed!'
    else:
        mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        staticcall stor2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            mem[(6 * ceil32(return_data.size)) + 96] = 2
            mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if arg2:
                mem[(6 * ceil32(return_data.size)) + 196] = arg2
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1333 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
                _1339 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = _1339
                require return_data.size >= _1333 + (32 * _1339) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _1339] = mem[(6 * ceil32(return_data.size)) + _1333 + 224 len 32 * _1339]
                require 0 < _1339
                _2587 = mem[(7 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2595 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2595] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                idx = 0
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2595 + 32
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
                _3805 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                    require 0 < mem[_3805]
                    mem[_3805 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2595]
                        require idx + 1 < mem[_3805]
                        mem[(32 * idx + 1) + _3805 + 32] = mem[(32 * idx) + _2595 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3805] - 1 < mem[_3805]
                    mem[(32 * mem[_3805] - 1) + _3805 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2587
                        mem[mem[64] + 68] = 160
                        _5102 = mem[_3805]
                        mem[mem[64] + 164] = mem[_3805]
                        idx = 0
                        s = _3805 + 32
                        t = mem[64] + 196
                        while idx < _5102:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2587, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5102) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6259 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6295 = mem[_6259]
                        require mem[_6259] <= test266151307()
                        require _6259 + return_data.size > _6259 + mem[_6259] + 31
                        _6331 = mem[_6259 + mem[_6259]]
                        require mem[_6259 + mem[_6259]] <= test266151307()
                        require (32 * mem[_6259 + mem[_6259]]) + 32 >= 0 and _6259 + ceil32(return_data.size) + (32 * mem[_6259 + mem[_6259]]) + 32 <= test266151307()
                        mem[64] = _6259 + ceil32(return_data.size) + (32 * mem[_6259 + mem[_6259]]) + 32
                        mem[_6259 + ceil32(return_data.size)] = _6331
                        require return_data.size >= _6295 + (32 * _6331) + 32
                        mem[_6259 + ceil32(return_data.size) + 32 len 32 * _6331] = mem[_6259 + _6295 + 32 len 32 * _6331]
                        require mem[_3805] - 1 < _6331
                        _7159 = mem[(32 * mem[_3805] - 1) + _6259 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3805] - 1) + _6259 + ceil32(return_data.size) + 32] <= _2587:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2587
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2587
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7339 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7339] == bool(mem[_7339])
                        if not mem[_7339]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7159 - _2587
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7159 - _2587
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7555 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7555] == bool(mem[_7555])
                        if not mem[_7555]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2587
                            mem[mem[64] + 68] = 160
                            _5131 = mem[_3805]
                            mem[mem[64] + 164] = mem[_3805]
                            idx = 0
                            s = _3805 + 32
                            t = mem[64] + 196
                            while idx < _5131:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _2587, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5131) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6258 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6294 = mem[_6258]
                            require mem[_6258] <= test266151307()
                            require _6258 + return_data.size > _6258 + mem[_6258] + 31
                            _6330 = mem[_6258 + mem[_6258]]
                            require mem[_6258 + mem[_6258]] <= test266151307()
                            require (32 * mem[_6258 + mem[_6258]]) + 32 >= 0 and _6258 + ceil32(return_data.size) + (32 * mem[_6258 + mem[_6258]]) + 32 <= test266151307()
                            mem[64] = _6258 + ceil32(return_data.size) + (32 * mem[_6258 + mem[_6258]]) + 32
                            mem[_6258 + ceil32(return_data.size)] = _6330
                            require return_data.size >= _6294 + (32 * _6330) + 32
                            mem[_6258 + ceil32(return_data.size) + 32 len 32 * _6330] = mem[_6258 + _6294 + 32 len 32 * _6330]
                            require mem[_3805] - 1 < _6330
                            _7158 = mem[(32 * mem[_3805] - 1) + _6258 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3805] - 1) + _6258 + ceil32(return_data.size) + 32] <= _2587:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2587
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2587
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7338 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7338] == bool(mem[_7338])
                            if not mem[_7338]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7158 - _2587
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7158 - _2587
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7554 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7554] == bool(mem[_7554])
                            if not mem[_7554]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2587:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5245 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5245] == bool(mem[_5245])
                                if not mem[_5245]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5473 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5473] == bool(mem[_5473])
                                if not mem[_5473]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                _5101 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _2587
                                mem[mem[64] + 68] = 160
                                _5161 = mem[_3805]
                                mem[mem[64] + 164] = mem[_3805]
                                idx = 0
                                s = _3805 + 32
                                t = mem[64] + 196
                                while idx < _5161:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_5101 + 100] = this.address
                                mem[_5101 + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5101 + (32 * _5161) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6257 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6293 = mem[_6257]
                                require mem[_6257] <= test266151307()
                                require _6257 + return_data.size > _6257 + mem[_6257] + 31
                                _6329 = mem[_6257 + mem[_6257]]
                                require mem[_6257 + mem[_6257]] <= test266151307()
                                require (32 * mem[_6257 + mem[_6257]]) + 32 >= 0 and _6257 + ceil32(return_data.size) + (32 * mem[_6257 + mem[_6257]]) + 32 <= test266151307()
                                mem[64] = _6257 + ceil32(return_data.size) + (32 * mem[_6257 + mem[_6257]]) + 32
                                mem[_6257 + ceil32(return_data.size)] = _6329
                                require return_data.size >= _6293 + (32 * _6329) + 32
                                mem[_6257 + ceil32(return_data.size) + 32 len 32 * _6329] = mem[_6257 + _6293 + 32 len 32 * _6329]
                                require mem[_3805] - 1 < _6329
                                _7157 = mem[(32 * mem[_3805] - 1) + _6257 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3805] - 1) + _6257 + ceil32(return_data.size) + 32] <= _2587:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7337 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7337] == bool(mem[_7337])
                                if not mem[_7337]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7157 - _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7157 - _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7553 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7553] == bool(mem[_7553])
                                if not mem[_7553]:
                                    revert with 0, 'Take profit failed!'
                else:
                    mem[_3805 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                    require 0 < mem[_3805]
                    mem[_3805 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2595]
                        require idx + 1 < mem[_3805]
                        mem[(32 * idx + 1) + _3805 + 32] = mem[(32 * idx) + _2595 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3805] - 1 < mem[_3805]
                    mem[(32 * mem[_3805] - 1) + _3805 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        _5074 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2587
                        mem[mem[64] + 68] = 160
                        _5104 = mem[_3805]
                        mem[mem[64] + 164] = mem[_3805]
                        idx = 0
                        s = _3805 + 32
                        t = mem[64] + 196
                        while idx < _5104:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5074 + 100] = this.address
                        mem[_5074 + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5074 + (32 * _5104) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6262 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6298 = mem[_6262]
                        require mem[_6262] <= test266151307()
                        require _6262 + return_data.size > _6262 + mem[_6262] + 31
                        _6334 = mem[_6262 + mem[_6262]]
                        require mem[_6262 + mem[_6262]] <= test266151307()
                        require (32 * mem[_6262 + mem[_6262]]) + 32 >= 0 and _6262 + ceil32(return_data.size) + (32 * mem[_6262 + mem[_6262]]) + 32 <= test266151307()
                        mem[64] = _6262 + ceil32(return_data.size) + (32 * mem[_6262 + mem[_6262]]) + 32
                        mem[_6262 + ceil32(return_data.size)] = _6334
                        require return_data.size >= _6298 + (32 * _6334) + 32
                        mem[_6262 + ceil32(return_data.size) + 32 len 32 * _6334] = mem[_6262 + _6298 + 32 len 32 * _6334]
                        require mem[_3805] - 1 < _6334
                        _7162 = mem[(32 * mem[_3805] - 1) + _6262 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3805] - 1) + _6262 + ceil32(return_data.size) + 32] <= _2587:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2587
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2587
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7342 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7342] == bool(mem[_7342])
                        if not mem[_7342]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7162 - _2587
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7162 - _2587
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7558] == bool(mem[_7558])
                        if not mem[_7558]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2587
                            mem[mem[64] + 68] = 160
                            _5134 = mem[_3805]
                            mem[mem[64] + 164] = mem[_3805]
                            idx = 0
                            s = _3805 + 32
                            t = mem[64] + 196
                            while idx < _5134:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _2587, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5134) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6261 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6297 = mem[_6261]
                            require mem[_6261] <= test266151307()
                            require _6261 + return_data.size > _6261 + mem[_6261] + 31
                            _6333 = mem[_6261 + mem[_6261]]
                            require mem[_6261 + mem[_6261]] <= test266151307()
                            require (32 * mem[_6261 + mem[_6261]]) + 32 >= 0 and _6261 + ceil32(return_data.size) + (32 * mem[_6261 + mem[_6261]]) + 32 <= test266151307()
                            mem[64] = _6261 + ceil32(return_data.size) + (32 * mem[_6261 + mem[_6261]]) + 32
                            mem[_6261 + ceil32(return_data.size)] = _6333
                            require return_data.size >= _6297 + (32 * _6333) + 32
                            mem[_6261 + ceil32(return_data.size) + 32 len 32 * _6333] = mem[_6261 + _6297 + 32 len 32 * _6333]
                            require mem[_3805] - 1 < _6333
                            _7161 = mem[(32 * mem[_3805] - 1) + _6261 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3805] - 1) + _6261 + ceil32(return_data.size) + 32] <= _2587:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2587
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2587
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7341 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7341] == bool(mem[_7341])
                            if not mem[_7341]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7161 - _2587
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7161 - _2587
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7557 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7557] == bool(mem[_7557])
                            if not mem[_7557]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2587:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5247 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5247] == bool(mem[_5247])
                                if not mem[_5247]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5475 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5475] == bool(mem[_5475])
                                if not mem[_5475]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _2587
                                mem[mem[64] + 68] = 160
                                _5163 = mem[_3805]
                                mem[mem[64] + 164] = mem[_3805]
                                idx = 0
                                s = _3805 + 32
                                t = mem[64] + 196
                                while idx < _5163:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _2587, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5163) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6260 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6296 = mem[_6260]
                                require mem[_6260] <= test266151307()
                                require _6260 + return_data.size > _6260 + mem[_6260] + 31
                                _6332 = mem[_6260 + mem[_6260]]
                                require mem[_6260 + mem[_6260]] <= test266151307()
                                require (32 * mem[_6260 + mem[_6260]]) + 32 >= 0 and _6260 + ceil32(return_data.size) + (32 * mem[_6260 + mem[_6260]]) + 32 <= test266151307()
                                mem[64] = _6260 + ceil32(return_data.size) + (32 * mem[_6260 + mem[_6260]]) + 32
                                mem[_6260 + ceil32(return_data.size)] = _6332
                                require return_data.size >= _6296 + (32 * _6332) + 32
                                mem[_6260 + ceil32(return_data.size) + 32 len 32 * _6332] = mem[_6260 + _6296 + 32 len 32 * _6332]
                                require mem[_3805] - 1 < _6332
                                _7160 = mem[(32 * mem[_3805] - 1) + _6260 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3805] - 1) + _6260 + ceil32(return_data.size) + 32] <= _2587:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7340 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7340] == bool(mem[_7340])
                                if not mem[_7340]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7160 - _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7160 - _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7556 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7556] == bool(mem[_7556])
                                if not mem[_7556]:
                                    revert with 0, 'Take profit failed!'
            else:
                mem[(6 * ceil32(return_data.size)) + 196] = arg3
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1334 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _1340 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = _1340
                require return_data.size >= _1334 + (32 * _1340) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _1340] = mem[(6 * ceil32(return_data.size)) + _1334 + 224 len 32 * _1340]
                require 0 < _1340
                _2588 = mem[(7 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2596 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2596] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                idx = 0
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2596 + 32
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
                _3806 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                    require 0 < mem[_3806]
                    mem[_3806 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2596]
                        require idx + 1 < mem[_3806]
                        mem[(32 * idx + 1) + _3806 + 32] = mem[(32 * idx) + _2596 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3806] - 1 < mem[_3806]
                    mem[(32 * mem[_3806] - 1) + _3806 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2588
                        mem[mem[64] + 68] = 160
                        _5106 = mem[_3806]
                        mem[mem[64] + 164] = mem[_3806]
                        idx = 0
                        s = _3806 + 32
                        t = mem[64] + 196
                        while idx < _5106:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2588, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5106) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6265 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6301 = mem[_6265]
                        require mem[_6265] <= test266151307()
                        require _6265 + return_data.size > _6265 + mem[_6265] + 31
                        _6337 = mem[_6265 + mem[_6265]]
                        require mem[_6265 + mem[_6265]] <= test266151307()
                        require (32 * mem[_6265 + mem[_6265]]) + 32 >= 0 and _6265 + ceil32(return_data.size) + (32 * mem[_6265 + mem[_6265]]) + 32 <= test266151307()
                        mem[64] = _6265 + ceil32(return_data.size) + (32 * mem[_6265 + mem[_6265]]) + 32
                        mem[_6265 + ceil32(return_data.size)] = _6337
                        require return_data.size >= _6301 + (32 * _6337) + 32
                        mem[_6265 + ceil32(return_data.size) + 32 len 32 * _6337] = mem[_6265 + _6301 + 32 len 32 * _6337]
                        require mem[_3806] - 1 < _6337
                        _7165 = mem[(32 * mem[_3806] - 1) + _6265 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3806] - 1) + _6265 + ceil32(return_data.size) + 32] <= _2588:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2588
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2588
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7345 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7345] == bool(mem[_7345])
                        if not mem[_7345]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7165 - _2588
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7165 - _2588
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7561 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7561] == bool(mem[_7561])
                        if not mem[_7561]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            _5087 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2588
                            mem[mem[64] + 68] = 160
                            _5137 = mem[_3806]
                            mem[mem[64] + 164] = mem[_3806]
                            idx = 0
                            s = _3806 + 32
                            t = mem[64] + 196
                            while idx < _5137:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5087 + 100] = this.address
                            mem[_5087 + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5087 + (32 * _5137) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6264 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6300 = mem[_6264]
                            require mem[_6264] <= test266151307()
                            require _6264 + return_data.size > _6264 + mem[_6264] + 31
                            _6336 = mem[_6264 + mem[_6264]]
                            require mem[_6264 + mem[_6264]] <= test266151307()
                            require (32 * mem[_6264 + mem[_6264]]) + 32 >= 0 and _6264 + ceil32(return_data.size) + (32 * mem[_6264 + mem[_6264]]) + 32 <= test266151307()
                            mem[64] = _6264 + ceil32(return_data.size) + (32 * mem[_6264 + mem[_6264]]) + 32
                            mem[_6264 + ceil32(return_data.size)] = _6336
                            require return_data.size >= _6300 + (32 * _6336) + 32
                            mem[_6264 + ceil32(return_data.size) + 32 len 32 * _6336] = mem[_6264 + _6300 + 32 len 32 * _6336]
                            require mem[_3806] - 1 < _6336
                            _7164 = mem[(32 * mem[_3806] - 1) + _6264 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3806] - 1) + _6264 + ceil32(return_data.size) + 32] <= _2588:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2588
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2588
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7344 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7344] == bool(mem[_7344])
                            if not mem[_7344]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7164 - _2588
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7164 - _2588
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7560 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7560] == bool(mem[_7560])
                            if not mem[_7560]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2588:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5249 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5249] == bool(mem[_5249])
                                if not mem[_5249]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5477 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5477] == bool(mem[_5477])
                                if not mem[_5477]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                _5105 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _2588
                                mem[mem[64] + 68] = 160
                                _5165 = mem[_3806]
                                mem[mem[64] + 164] = mem[_3806]
                                idx = 0
                                s = _3806 + 32
                                t = mem[64] + 196
                                while idx < _5165:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_5105 + 100] = this.address
                                mem[_5105 + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5105 + (32 * _5165) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6263 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6299 = mem[_6263]
                                require mem[_6263] <= test266151307()
                                require _6263 + return_data.size > _6263 + mem[_6263] + 31
                                _6335 = mem[_6263 + mem[_6263]]
                                require mem[_6263 + mem[_6263]] <= test266151307()
                                require (32 * mem[_6263 + mem[_6263]]) + 32 >= 0 and _6263 + ceil32(return_data.size) + (32 * mem[_6263 + mem[_6263]]) + 32 <= test266151307()
                                mem[64] = _6263 + ceil32(return_data.size) + (32 * mem[_6263 + mem[_6263]]) + 32
                                mem[_6263 + ceil32(return_data.size)] = _6335
                                require return_data.size >= _6299 + (32 * _6335) + 32
                                mem[_6263 + ceil32(return_data.size) + 32 len 32 * _6335] = mem[_6263 + _6299 + 32 len 32 * _6335]
                                require mem[_3806] - 1 < _6335
                                _7163 = mem[(32 * mem[_3806] - 1) + _6263 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3806] - 1) + _6263 + ceil32(return_data.size) + 32] <= _2588:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7343 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7343] == bool(mem[_7343])
                                if not mem[_7343]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7163 - _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7163 - _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7559 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7559] == bool(mem[_7559])
                                if not mem[_7559]:
                                    revert with 0, 'Take profit failed!'
                else:
                    mem[_3806 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                    require 0 < mem[_3806]
                    mem[_3806 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2596]
                        require idx + 1 < mem[_3806]
                        mem[(32 * idx + 1) + _3806 + 32] = mem[(32 * idx) + _2596 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3806] - 1 < mem[_3806]
                    mem[(32 * mem[_3806] - 1) + _3806 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        _5076 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2588
                        mem[mem[64] + 68] = 160
                        _5108 = mem[_3806]
                        mem[mem[64] + 164] = mem[_3806]
                        idx = 0
                        s = _3806 + 32
                        t = mem[64] + 196
                        while idx < _5108:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5076 + 100] = this.address
                        mem[_5076 + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5076 + (32 * _5108) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6268 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6304 = mem[_6268]
                        require mem[_6268] <= test266151307()
                        require _6268 + return_data.size > _6268 + mem[_6268] + 31
                        _6340 = mem[_6268 + mem[_6268]]
                        require mem[_6268 + mem[_6268]] <= test266151307()
                        require (32 * mem[_6268 + mem[_6268]]) + 32 >= 0 and _6268 + ceil32(return_data.size) + (32 * mem[_6268 + mem[_6268]]) + 32 <= test266151307()
                        mem[64] = _6268 + ceil32(return_data.size) + (32 * mem[_6268 + mem[_6268]]) + 32
                        mem[_6268 + ceil32(return_data.size)] = _6340
                        require return_data.size >= _6304 + (32 * _6340) + 32
                        mem[_6268 + ceil32(return_data.size) + 32 len 32 * _6340] = mem[_6268 + _6304 + 32 len 32 * _6340]
                        require mem[_3806] - 1 < _6340
                        _7168 = mem[(32 * mem[_3806] - 1) + _6268 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3806] - 1) + _6268 + ceil32(return_data.size) + 32] <= _2588:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2588
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2588
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7348 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7348] == bool(mem[_7348])
                        if not mem[_7348]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7168 - _2588
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7168 - _2588
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7564 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7564] == bool(mem[_7564])
                        if not mem[_7564]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] != 2:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2588:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5251 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5251] == bool(mem[_5251])
                                if not mem[_5251]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5479 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5479] == bool(mem[_5479])
                                if not mem[_5479]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _2588
                                mem[mem[64] + 68] = 160
                                _5167 = mem[_3806]
                                mem[mem[64] + 164] = mem[_3806]
                                idx = 0
                                s = _3806 + 32
                                t = mem[64] + 196
                                while idx < _5167:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _2588, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5167) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6266 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6302 = mem[_6266]
                                require mem[_6266] <= test266151307()
                                require _6266 + return_data.size > _6266 + mem[_6266] + 31
                                _6338 = mem[_6266 + mem[_6266]]
                                require mem[_6266 + mem[_6266]] <= test266151307()
                                require (32 * mem[_6266 + mem[_6266]]) + 32 >= 0 and _6266 + ceil32(return_data.size) + (32 * mem[_6266 + mem[_6266]]) + 32 <= test266151307()
                                mem[64] = _6266 + ceil32(return_data.size) + (32 * mem[_6266 + mem[_6266]]) + 32
                                mem[_6266 + ceil32(return_data.size)] = _6338
                                require return_data.size >= _6302 + (32 * _6338) + 32
                                mem[_6266 + ceil32(return_data.size) + 32 len 32 * _6338] = mem[_6266 + _6302 + 32 len 32 * _6338]
                                require mem[_3806] - 1 < _6338
                                _7166 = mem[(32 * mem[_3806] - 1) + _6266 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3806] - 1) + _6266 + ceil32(return_data.size) + 32] <= _2588:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7346 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7346] == bool(mem[_7346])
                                if not mem[_7346]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7166 - _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7166 - _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7562 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7562] == bool(mem[_7562])
                                if not mem[_7562]:
                                    revert with 0, 'Take profit failed!'
                        else:
                            _5088 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2588
                            mem[mem[64] + 68] = 160
                            _5140 = mem[_3806]
                            mem[mem[64] + 164] = mem[_3806]
                            idx = 0
                            s = _3806 + 32
                            t = mem[64] + 196
                            while idx < _5140:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5088 + 100] = this.address
                            mem[_5088 + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5088 + (32 * _5140) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6267 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6303 = mem[_6267]
                            require mem[_6267] <= test266151307()
                            require _6267 + return_data.size > _6267 + mem[_6267] + 31
                            _6339 = mem[_6267 + mem[_6267]]
                            require mem[_6267 + mem[_6267]] <= test266151307()
                            require (32 * mem[_6267 + mem[_6267]]) + 32 >= 0 and _6267 + ceil32(return_data.size) + (32 * mem[_6267 + mem[_6267]]) + 32 <= test266151307()
                            mem[64] = _6267 + ceil32(return_data.size) + (32 * mem[_6267 + mem[_6267]]) + 32
                            mem[_6267 + ceil32(return_data.size)] = _6339
                            require return_data.size >= _6303 + (32 * _6339) + 32
                            mem[_6267 + ceil32(return_data.size) + 32 len 32 * _6339] = mem[_6267 + _6303 + 32 len 32 * _6339]
                            require mem[_3806] - 1 < _6339
                            _7167 = mem[(32 * mem[_3806] - 1) + _6267 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3806] - 1) + _6267 + ceil32(return_data.size) + 32] <= _2588:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2588
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2588
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7347 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7347] == bool(mem[_7347])
                            if not mem[_7347]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7167 - _2588
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7167 - _2588
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7563 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7563] == bool(mem[_7563])
                            if not mem[_7563]:
                                revert with 0, 'Take profit failed!'
        else:
            mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            require ext_code.size(stor3)
            staticcall stor3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Unknown caller!'
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if arg2:
                mem[(7 * ceil32(return_data.size)) + 196] = arg2
                mem[(7 * ceil32(return_data.size)) + 228] = 64
                mem[(7 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1331 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 192 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
                _1337 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require return_data.size >= _1331 + (32 * _1337) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _1337] = mem[(7 * ceil32(return_data.size)) + _1331 + 224 len 32 * _1337]
                require 0 < _1337
                _2585 = mem[(8 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2593 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2593] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                idx = 0
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2593 + 32
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
                _3803 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                    require 0 < mem[_3803]
                    mem[_3803 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2593]
                        require idx + 1 < mem[_3803]
                        mem[(32 * idx + 1) + _3803 + 32] = mem[(32 * idx) + _2593 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3803] - 1 < mem[_3803]
                    mem[(32 * mem[_3803] - 1) + _3803 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2585
                        mem[mem[64] + 68] = 160
                        _5094 = mem[_3803]
                        mem[mem[64] + 164] = mem[_3803]
                        idx = 0
                        s = _3803 + 32
                        t = mem[64] + 196
                        while idx < _5094:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2585, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5094) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6247 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6283 = mem[_6247]
                        require mem[_6247] <= test266151307()
                        require _6247 + return_data.size > _6247 + mem[_6247] + 31
                        _6319 = mem[_6247 + mem[_6247]]
                        require mem[_6247 + mem[_6247]] <= test266151307()
                        require (32 * mem[_6247 + mem[_6247]]) + 32 >= 0 and _6247 + ceil32(return_data.size) + (32 * mem[_6247 + mem[_6247]]) + 32 <= test266151307()
                        mem[64] = _6247 + ceil32(return_data.size) + (32 * mem[_6247 + mem[_6247]]) + 32
                        mem[_6247 + ceil32(return_data.size)] = _6319
                        require return_data.size >= _6283 + (32 * _6319) + 32
                        mem[_6247 + ceil32(return_data.size) + 32 len 32 * _6319] = mem[_6247 + _6283 + 32 len 32 * _6319]
                        require mem[_3803] - 1 < _6319
                        _7147 = mem[(32 * mem[_3803] - 1) + _6247 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3803] - 1) + _6247 + ceil32(return_data.size) + 32] <= _2585:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2585
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2585
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7327] == bool(mem[_7327])
                        if not mem[_7327]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7147 - _2585
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7147 - _2585
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7543 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7543] == bool(mem[_7543])
                        if not mem[_7543]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2585
                            mem[mem[64] + 68] = 160
                            _5119 = mem[_3803]
                            mem[mem[64] + 164] = mem[_3803]
                            idx = 0
                            s = _3803 + 32
                            t = mem[64] + 196
                            while idx < _5119:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _2585, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5119) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6246 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6282 = mem[_6246]
                            require mem[_6246] <= test266151307()
                            require _6246 + return_data.size > _6246 + mem[_6246] + 31
                            _6318 = mem[_6246 + mem[_6246]]
                            require mem[_6246 + mem[_6246]] <= test266151307()
                            require (32 * mem[_6246 + mem[_6246]]) + 32 >= 0 and _6246 + ceil32(return_data.size) + (32 * mem[_6246 + mem[_6246]]) + 32 <= test266151307()
                            mem[64] = _6246 + ceil32(return_data.size) + (32 * mem[_6246 + mem[_6246]]) + 32
                            mem[_6246 + ceil32(return_data.size)] = _6318
                            require return_data.size >= _6282 + (32 * _6318) + 32
                            mem[_6246 + ceil32(return_data.size) + 32 len 32 * _6318] = mem[_6246 + _6282 + 32 len 32 * _6318]
                            require mem[_3803] - 1 < _6318
                            _7146 = mem[(32 * mem[_3803] - 1) + _6246 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3803] - 1) + _6246 + ceil32(return_data.size) + 32] <= _2585:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2585
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2585
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7326 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7326] == bool(mem[_7326])
                            if not mem[_7326]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7146 - _2585
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7146 - _2585
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7542 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7542] == bool(mem[_7542])
                            if not mem[_7542]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2585:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5237 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5237] == bool(mem[_5237])
                                if not mem[_5237]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5465 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5465] == bool(mem[_5465])
                                if not mem[_5465]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _2585
                                mem[mem[64] + 68] = 160
                                _5153 = mem[_3803]
                                mem[mem[64] + 164] = mem[_3803]
                                idx = 0
                                s = _3803 + 32
                                t = mem[64] + 196
                                while idx < _5153:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _2585, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5153) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6245 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6281 = mem[_6245]
                                require mem[_6245] <= test266151307()
                                require _6245 + return_data.size > _6245 + mem[_6245] + 31
                                _6317 = mem[_6245 + mem[_6245]]
                                require mem[_6245 + mem[_6245]] <= test266151307()
                                require (32 * mem[_6245 + mem[_6245]]) + 32 >= 0 and _6245 + ceil32(return_data.size) + (32 * mem[_6245 + mem[_6245]]) + 32 <= test266151307()
                                mem[64] = _6245 + ceil32(return_data.size) + (32 * mem[_6245 + mem[_6245]]) + 32
                                mem[_6245 + ceil32(return_data.size)] = _6317
                                require return_data.size >= _6281 + (32 * _6317) + 32
                                mem[_6245 + ceil32(return_data.size) + 32 len 32 * _6317] = mem[_6245 + _6281 + 32 len 32 * _6317]
                                require mem[_3803] - 1 < _6317
                                _7145 = mem[(32 * mem[_3803] - 1) + _6245 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3803] - 1) + _6245 + ceil32(return_data.size) + 32] <= _2585:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7325 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7325] == bool(mem[_7325])
                                if not mem[_7325]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7145 - _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7145 - _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7541 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7541] == bool(mem[_7541])
                                if not mem[_7541]:
                                    revert with 0, 'Take profit failed!'
                else:
                    mem[_3803 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                    require 0 < mem[_3803]
                    mem[_3803 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2593]
                        require idx + 1 < mem[_3803]
                        mem[(32 * idx + 1) + _3803 + 32] = mem[(32 * idx) + _2593 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3803] - 1 < mem[_3803]
                    mem[(32 * mem[_3803] - 1) + _3803 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        _5070 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2585
                        mem[mem[64] + 68] = 160
                        _5096 = mem[_3803]
                        mem[mem[64] + 164] = mem[_3803]
                        idx = 0
                        s = _3803 + 32
                        t = mem[64] + 196
                        while idx < _5096:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5070 + 100] = this.address
                        mem[_5070 + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5070 + (32 * _5096) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6250 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6286 = mem[_6250]
                        require mem[_6250] <= test266151307()
                        require _6250 + return_data.size > _6250 + mem[_6250] + 31
                        _6322 = mem[_6250 + mem[_6250]]
                        require mem[_6250 + mem[_6250]] <= test266151307()
                        require (32 * mem[_6250 + mem[_6250]]) + 32 >= 0 and _6250 + ceil32(return_data.size) + (32 * mem[_6250 + mem[_6250]]) + 32 <= test266151307()
                        mem[64] = _6250 + ceil32(return_data.size) + (32 * mem[_6250 + mem[_6250]]) + 32
                        mem[_6250 + ceil32(return_data.size)] = _6322
                        require return_data.size >= _6286 + (32 * _6322) + 32
                        mem[_6250 + ceil32(return_data.size) + 32 len 32 * _6322] = mem[_6250 + _6286 + 32 len 32 * _6322]
                        require mem[_3803] - 1 < _6322
                        _7150 = mem[(32 * mem[_3803] - 1) + _6250 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3803] - 1) + _6250 + ceil32(return_data.size) + 32] <= _2585:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2585
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2585
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7330] == bool(mem[_7330])
                        if not mem[_7330]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7150 - _2585
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7150 - _2585
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7546 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7546] == bool(mem[_7546])
                        if not mem[_7546]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            _5082 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2585
                            mem[mem[64] + 68] = 160
                            _5122 = mem[_3803]
                            mem[mem[64] + 164] = mem[_3803]
                            idx = 0
                            s = _3803 + 32
                            t = mem[64] + 196
                            while idx < _5122:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5082 + 100] = this.address
                            mem[_5082 + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5082 + (32 * _5122) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6249 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6285 = mem[_6249]
                            require mem[_6249] <= test266151307()
                            require _6249 + return_data.size > _6249 + mem[_6249] + 31
                            _6321 = mem[_6249 + mem[_6249]]
                            require mem[_6249 + mem[_6249]] <= test266151307()
                            require (32 * mem[_6249 + mem[_6249]]) + 32 >= 0 and _6249 + ceil32(return_data.size) + (32 * mem[_6249 + mem[_6249]]) + 32 <= test266151307()
                            mem[64] = _6249 + ceil32(return_data.size) + (32 * mem[_6249 + mem[_6249]]) + 32
                            mem[_6249 + ceil32(return_data.size)] = _6321
                            require return_data.size >= _6285 + (32 * _6321) + 32
                            mem[_6249 + ceil32(return_data.size) + 32 len 32 * _6321] = mem[_6249 + _6285 + 32 len 32 * _6321]
                            require mem[_3803] - 1 < _6321
                            _7149 = mem[(32 * mem[_3803] - 1) + _6249 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3803] - 1) + _6249 + ceil32(return_data.size) + 32] <= _2585:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2585
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2585
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7329 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7329] == bool(mem[_7329])
                            if not mem[_7329]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7149 - _2585
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7149 - _2585
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7545 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7545] == bool(mem[_7545])
                            if not mem[_7545]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2585:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5239 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5239] == bool(mem[_5239])
                                if not mem[_5239]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5467 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5467] == bool(mem[_5467])
                                if not mem[_5467]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                _5095 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _2585
                                mem[mem[64] + 68] = 160
                                _5155 = mem[_3803]
                                mem[mem[64] + 164] = mem[_3803]
                                idx = 0
                                s = _3803 + 32
                                t = mem[64] + 196
                                while idx < _5155:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_5095 + 100] = this.address
                                mem[_5095 + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5095 + (32 * _5155) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6248 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6284 = mem[_6248]
                                require mem[_6248] <= test266151307()
                                require _6248 + return_data.size > _6248 + mem[_6248] + 31
                                _6320 = mem[_6248 + mem[_6248]]
                                require mem[_6248 + mem[_6248]] <= test266151307()
                                require (32 * mem[_6248 + mem[_6248]]) + 32 >= 0 and _6248 + ceil32(return_data.size) + (32 * mem[_6248 + mem[_6248]]) + 32 <= test266151307()
                                mem[64] = _6248 + ceil32(return_data.size) + (32 * mem[_6248 + mem[_6248]]) + 32
                                mem[_6248 + ceil32(return_data.size)] = _6320
                                require return_data.size >= _6284 + (32 * _6320) + 32
                                mem[_6248 + ceil32(return_data.size) + 32 len 32 * _6320] = mem[_6248 + _6284 + 32 len 32 * _6320]
                                require mem[_3803] - 1 < _6320
                                _7148 = mem[(32 * mem[_3803] - 1) + _6248 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3803] - 1) + _6248 + ceil32(return_data.size) + 32] <= _2585:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7328 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7328] == bool(mem[_7328])
                                if not mem[_7328]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7148 - _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7148 - _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7544 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7544] == bool(mem[_7544])
                                if not mem[_7544]:
                                    revert with 0, 'Take profit failed!'
            else:
                mem[(7 * ceil32(return_data.size)) + 196] = arg3
                mem[(7 * ceil32(return_data.size)) + 228] = 64
                mem[(7 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1332 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 192 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _1338 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _1332 + (32 * _1338) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _1338] = mem[(7 * ceil32(return_data.size)) + _1332 + 224 len 32 * _1338]
                require 0 < _1338
                _2586 = mem[(8 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2594 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2594] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                idx = 0
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2594 + 32
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
                _3804 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                    require 0 < mem[_3804]
                    mem[_3804 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2594]
                        require idx + 1 < mem[_3804]
                        mem[(32 * idx + 1) + _3804 + 32] = mem[(32 * idx) + _2594 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3804] - 1 < mem[_3804]
                    mem[(32 * mem[_3804] - 1) + _3804 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2586
                        mem[mem[64] + 68] = 160
                        _5098 = mem[_3804]
                        mem[mem[64] + 164] = mem[_3804]
                        idx = 0
                        s = _3804 + 32
                        t = mem[64] + 196
                        while idx < _5098:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2586, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5098) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6253 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6289 = mem[_6253]
                        require mem[_6253] <= test266151307()
                        require _6253 + return_data.size > _6253 + mem[_6253] + 31
                        _6325 = mem[_6253 + mem[_6253]]
                        require mem[_6253 + mem[_6253]] <= test266151307()
                        require (32 * mem[_6253 + mem[_6253]]) + 32 >= 0 and _6253 + ceil32(return_data.size) + (32 * mem[_6253 + mem[_6253]]) + 32 <= test266151307()
                        mem[64] = _6253 + ceil32(return_data.size) + (32 * mem[_6253 + mem[_6253]]) + 32
                        mem[_6253 + ceil32(return_data.size)] = _6325
                        require return_data.size >= _6289 + (32 * _6325) + 32
                        mem[_6253 + ceil32(return_data.size) + 32 len 32 * _6325] = mem[_6253 + _6289 + 32 len 32 * _6325]
                        require mem[_3804] - 1 < _6325
                        _7153 = mem[(32 * mem[_3804] - 1) + _6253 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3804] - 1) + _6253 + ceil32(return_data.size) + 32] <= _2586:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2586
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2586
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7333] == bool(mem[_7333])
                        if not mem[_7333]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7153 - _2586
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7153 - _2586
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7549] == bool(mem[_7549])
                        if not mem[_7549]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            _5083 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2586
                            mem[mem[64] + 68] = 160
                            _5125 = mem[_3804]
                            mem[mem[64] + 164] = mem[_3804]
                            idx = 0
                            s = _3804 + 32
                            t = mem[64] + 196
                            while idx < _5125:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5083 + 100] = this.address
                            mem[_5083 + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5083 + (32 * _5125) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6252 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6288 = mem[_6252]
                            require mem[_6252] <= test266151307()
                            require _6252 + return_data.size > _6252 + mem[_6252] + 31
                            _6324 = mem[_6252 + mem[_6252]]
                            require mem[_6252 + mem[_6252]] <= test266151307()
                            require (32 * mem[_6252 + mem[_6252]]) + 32 >= 0 and _6252 + ceil32(return_data.size) + (32 * mem[_6252 + mem[_6252]]) + 32 <= test266151307()
                            mem[64] = _6252 + ceil32(return_data.size) + (32 * mem[_6252 + mem[_6252]]) + 32
                            mem[_6252 + ceil32(return_data.size)] = _6324
                            require return_data.size >= _6288 + (32 * _6324) + 32
                            mem[_6252 + ceil32(return_data.size) + 32 len 32 * _6324] = mem[_6252 + _6288 + 32 len 32 * _6324]
                            require mem[_3804] - 1 < _6324
                            _7152 = mem[(32 * mem[_3804] - 1) + _6252 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3804] - 1) + _6252 + ceil32(return_data.size) + 32] <= _2586:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2586
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2586
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7332] == bool(mem[_7332])
                            if not mem[_7332]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7152 - _2586
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7152 - _2586
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7548 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7548] == bool(mem[_7548])
                            if not mem[_7548]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2586:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5241 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5241] == bool(mem[_5241])
                                if not mem[_5241]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5469 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5469] == bool(mem[_5469])
                                if not mem[_5469]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                _5097 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _2586
                                mem[mem[64] + 68] = 160
                                _5157 = mem[_3804]
                                mem[mem[64] + 164] = mem[_3804]
                                idx = 0
                                s = _3804 + 32
                                t = mem[64] + 196
                                while idx < _5157:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_5097 + 100] = this.address
                                mem[_5097 + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5097 + (32 * _5157) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6251 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6287 = mem[_6251]
                                require mem[_6251] <= test266151307()
                                require _6251 + return_data.size > _6251 + mem[_6251] + 31
                                _6323 = mem[_6251 + mem[_6251]]
                                require mem[_6251 + mem[_6251]] <= test266151307()
                                require (32 * mem[_6251 + mem[_6251]]) + 32 >= 0 and _6251 + ceil32(return_data.size) + (32 * mem[_6251 + mem[_6251]]) + 32 <= test266151307()
                                mem[64] = _6251 + ceil32(return_data.size) + (32 * mem[_6251 + mem[_6251]]) + 32
                                mem[_6251 + ceil32(return_data.size)] = _6323
                                require return_data.size >= _6287 + (32 * _6323) + 32
                                mem[_6251 + ceil32(return_data.size) + 32 len 32 * _6323] = mem[_6251 + _6287 + 32 len 32 * _6323]
                                require mem[_3804] - 1 < _6323
                                _7151 = mem[(32 * mem[_3804] - 1) + _6251 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3804] - 1) + _6251 + ceil32(return_data.size) + 32] <= _2586:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7331 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7331] == bool(mem[_7331])
                                if not mem[_7331]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7151 - _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7151 - _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7547 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7547] == bool(mem[_7547])
                                if not mem[_7547]:
                                    revert with 0, 'Take profit failed!'
                else:
                    mem[_3804 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                    require 0 < mem[_3804]
                    mem[_3804 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2594]
                        require idx + 1 < mem[_3804]
                        mem[(32 * idx + 1) + _3804 + 32] = mem[(32 * idx) + _2594 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3804] - 1 < mem[_3804]
                    mem[(32 * mem[_3804] - 1) + _3804 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2586
                        mem[mem[64] + 68] = 160
                        _5100 = mem[_3804]
                        mem[mem[64] + 164] = mem[_3804]
                        idx = 0
                        s = _3804 + 32
                        t = mem[64] + 196
                        while idx < _5100:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2586, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5100) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6256 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6292 = mem[_6256]
                        require mem[_6256] <= test266151307()
                        require _6256 + return_data.size > _6256 + mem[_6256] + 31
                        _6328 = mem[_6256 + mem[_6256]]
                        require mem[_6256 + mem[_6256]] <= test266151307()
                        require (32 * mem[_6256 + mem[_6256]]) + 32 >= 0 and _6256 + ceil32(return_data.size) + (32 * mem[_6256 + mem[_6256]]) + 32 <= test266151307()
                        mem[64] = _6256 + ceil32(return_data.size) + (32 * mem[_6256 + mem[_6256]]) + 32
                        mem[_6256 + ceil32(return_data.size)] = _6328
                        require return_data.size >= _6292 + (32 * _6328) + 32
                        mem[_6256 + ceil32(return_data.size) + 32 len 32 * _6328] = mem[_6256 + _6292 + 32 len 32 * _6328]
                        require mem[_3804] - 1 < _6328
                        _7156 = mem[(32 * mem[_3804] - 1) + _6256 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3804] - 1) + _6256 + ceil32(return_data.size) + 32] <= _2586:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2586
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2586
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7336 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7336] == bool(mem[_7336])
                        if not mem[_7336]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7156 - _2586
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7156 - _2586
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7552 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7552] == bool(mem[_7552])
                        if not mem[_7552]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            _5084 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2586
                            mem[mem[64] + 68] = 160
                            _5128 = mem[_3804]
                            mem[mem[64] + 164] = mem[_3804]
                            idx = 0
                            s = _3804 + 32
                            t = mem[64] + 196
                            while idx < _5128:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5084 + 100] = this.address
                            mem[_5084 + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5084 + (32 * _5128) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6255 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6291 = mem[_6255]
                            require mem[_6255] <= test266151307()
                            require _6255 + return_data.size > _6255 + mem[_6255] + 31
                            _6327 = mem[_6255 + mem[_6255]]
                            require mem[_6255 + mem[_6255]] <= test266151307()
                            require (32 * mem[_6255 + mem[_6255]]) + 32 >= 0 and _6255 + ceil32(return_data.size) + (32 * mem[_6255 + mem[_6255]]) + 32 <= test266151307()
                            mem[64] = _6255 + ceil32(return_data.size) + (32 * mem[_6255 + mem[_6255]]) + 32
                            mem[_6255 + ceil32(return_data.size)] = _6327
                            require return_data.size >= _6291 + (32 * _6327) + 32
                            mem[_6255 + ceil32(return_data.size) + 32 len 32 * _6327] = mem[_6255 + _6291 + 32 len 32 * _6327]
                            require mem[_3804] - 1 < _6327
                            _7155 = mem[(32 * mem[_3804] - 1) + _6255 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3804] - 1) + _6255 + ceil32(return_data.size) + 32] <= _2586:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2586
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2586
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7335 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7335] == bool(mem[_7335])
                            if not mem[_7335]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7155 - _2586
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7155 - _2586
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7551 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7551] == bool(mem[_7551])
                            if not mem[_7551]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2586:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5243 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5243] == bool(mem[_5243])
                                if not mem[_5243]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5471 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5471] == bool(mem[_5471])
                                if not mem[_5471]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                _5099 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _2586
                                mem[mem[64] + 68] = 160
                                _5159 = mem[_3804]
                                mem[mem[64] + 164] = mem[_3804]
                                idx = 0
                                s = _3804 + 32
                                t = mem[64] + 196
                                while idx < _5159:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_5099 + 100] = this.address
                                mem[_5099 + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5099 + (32 * _5159) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6254 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6290 = mem[_6254]
                                require mem[_6254] <= test266151307()
                                require _6254 + return_data.size > _6254 + mem[_6254] + 31
                                _6326 = mem[_6254 + mem[_6254]]
                                require mem[_6254 + mem[_6254]] <= test266151307()
                                require (32 * mem[_6254 + mem[_6254]]) + 32 >= 0 and _6254 + ceil32(return_data.size) + (32 * mem[_6254 + mem[_6254]]) + 32 <= test266151307()
                                mem[64] = _6254 + ceil32(return_data.size) + (32 * mem[_6254 + mem[_6254]]) + 32
                                mem[_6254 + ceil32(return_data.size)] = _6326
                                require return_data.size >= _6290 + (32 * _6326) + 32
                                mem[_6254 + ceil32(return_data.size) + 32 len 32 * _6326] = mem[_6254 + _6290 + 32 len 32 * _6326]
                                require mem[_3804] - 1 < _6326
                                _7154 = mem[(32 * mem[_3804] - 1) + _6254 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3804] - 1) + _6254 + ceil32(return_data.size) + 32] <= _2586:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7334 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7334] == bool(mem[_7334])
                                if not mem[_7334]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7154 - _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7154 - _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7550 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7550] == bool(mem[_7550])
                                if not mem[_7550]:
                                    revert with 0, 'Take profit failed!'
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        if arg2:
            mem[(4 * ceil32(return_data.size)) + 196] = arg2
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1335 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
            _1341 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _1341
            require return_data.size >= _1335 + (32 * _1341) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _1341] = mem[(4 * ceil32(return_data.size)) + _1335 + 224 len 32 * _1341]
            require 0 < _1341
            _2589 = mem[(6 * ceil32(return_data.size)) + 224]
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            _2591 = mem[64]
            require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
            mem[_2591] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            idx = 0
            s = arg4 + cd[(arg4 + 68)] + 68
            t = _2591 + 32
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
            _3807 = mem[64]
            mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
            if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                require 0 < mem[_3807]
                mem[_3807 + 32] = address(ext_call.return_data[0])
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[_2591]
                    require idx + 1 < mem[_3807]
                    mem[(32 * idx + 1) + _3807 + 32] = mem[(32 * idx) + _2591 + 44 len 20]
                    idx = idx + 1
                    continue 
                require mem[_3807] - 1 < mem[_3807]
                mem[(32 * mem[_3807] - 1) + _3807 + 32] = address(ext_call.return_data[0])
                if cd[(arg4 + 36)] == 1:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _2589
                    mem[mem[64] + 68] = 160
                    _5110 = mem[_3807]
                    mem[mem[64] + 164] = mem[_3807]
                    idx = 0
                    s = _3807 + 32
                    t = mem[64] + 196
                    while idx < _5110:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2589, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5110) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6271 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6307 = mem[_6271]
                    require mem[_6271] <= test266151307()
                    require _6271 + return_data.size > _6271 + mem[_6271] + 31
                    _6343 = mem[_6271 + mem[_6271]]
                    require mem[_6271 + mem[_6271]] <= test266151307()
                    require (32 * mem[_6271 + mem[_6271]]) + 32 >= 0 and _6271 + ceil32(return_data.size) + (32 * mem[_6271 + mem[_6271]]) + 32 <= test266151307()
                    mem[64] = _6271 + ceil32(return_data.size) + (32 * mem[_6271 + mem[_6271]]) + 32
                    mem[_6271 + ceil32(return_data.size)] = _6343
                    require return_data.size >= _6307 + (32 * _6343) + 32
                    mem[_6271 + ceil32(return_data.size) + 32 len 32 * _6343] = mem[_6271 + _6307 + 32 len 32 * _6343]
                    require mem[_3807] - 1 < _6343
                    _7171 = mem[(32 * mem[_3807] - 1) + _6271 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3807] - 1) + _6271 + ceil32(return_data.size) + 32] <= _2589:
                        revert with 0, 'Nope!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2589
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2589
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7351] == bool(mem[_7351])
                    if not mem[_7351]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _7171 - _2589
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _7171 - _2589
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7567] == bool(mem[_7567])
                    if not mem[_7567]:
                        revert with 0, 'Take profit failed!'
                else:
                    if cd[(arg4 + 36)] == 2:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2589
                        mem[mem[64] + 68] = 160
                        _5143 = mem[_3807]
                        mem[mem[64] + 164] = mem[_3807]
                        idx = 0
                        s = _3807 + 32
                        t = mem[64] + 196
                        while idx < _5143:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2589, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5143) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6270 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6306 = mem[_6270]
                        require mem[_6270] <= test266151307()
                        require _6270 + return_data.size > _6270 + mem[_6270] + 31
                        _6342 = mem[_6270 + mem[_6270]]
                        require mem[_6270 + mem[_6270]] <= test266151307()
                        require (32 * mem[_6270 + mem[_6270]]) + 32 >= 0 and _6270 + ceil32(return_data.size) + (32 * mem[_6270 + mem[_6270]]) + 32 <= test266151307()
                        mem[64] = _6270 + ceil32(return_data.size) + (32 * mem[_6270 + mem[_6270]]) + 32
                        mem[_6270 + ceil32(return_data.size)] = _6342
                        require return_data.size >= _6306 + (32 * _6342) + 32
                        mem[_6270 + ceil32(return_data.size) + 32 len 32 * _6342] = mem[_6270 + _6306 + 32 len 32 * _6342]
                        require mem[_3807] - 1 < _6342
                        _7170 = mem[(32 * mem[_3807] - 1) + _6270 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3807] - 1) + _6270 + ceil32(return_data.size) + 32] <= _2589:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2589
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2589
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7350 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7350] == bool(mem[_7350])
                        if not mem[_7350]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7170 - _2589
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7170 - _2589
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7566 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7566] == bool(mem[_7566])
                        if not mem[_7566]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] != 4:
                            if 0 <= _2589:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5253 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5253] == bool(mem[_5253])
                            if not mem[_5253]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = -_2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, -_2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5481 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5481] == bool(mem[_5481])
                            if not mem[_5481]:
                                revert with 0, 'Take profit failed!'
                        else:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2589
                            mem[mem[64] + 68] = 160
                            _5169 = mem[_3807]
                            mem[mem[64] + 164] = mem[_3807]
                            idx = 0
                            s = _3807 + 32
                            t = mem[64] + 196
                            while idx < _5169:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = -1
                            require ext_code.size(stor6)
                            call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _2589, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5169) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6269 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6305 = mem[_6269]
                            require mem[_6269] <= test266151307()
                            require _6269 + return_data.size > _6269 + mem[_6269] + 31
                            _6341 = mem[_6269 + mem[_6269]]
                            require mem[_6269 + mem[_6269]] <= test266151307()
                            require (32 * mem[_6269 + mem[_6269]]) + 32 >= 0 and _6269 + ceil32(return_data.size) + (32 * mem[_6269 + mem[_6269]]) + 32 <= test266151307()
                            mem[64] = _6269 + ceil32(return_data.size) + (32 * mem[_6269 + mem[_6269]]) + 32
                            mem[_6269 + ceil32(return_data.size)] = _6341
                            require return_data.size >= _6305 + (32 * _6341) + 32
                            mem[_6269 + ceil32(return_data.size) + 32 len 32 * _6341] = mem[_6269 + _6305 + 32 len 32 * _6341]
                            require mem[_3807] - 1 < _6341
                            _7169 = mem[(32 * mem[_3807] - 1) + _6269 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3807] - 1) + _6269 + ceil32(return_data.size) + 32] <= _2589:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7349 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7349] == bool(mem[_7349])
                            if not mem[_7349]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7169 - _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7169 - _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7565] == bool(mem[_7565])
                            if not mem[_7565]:
                                revert with 0, 'Take profit failed!'
            else:
                mem[_3807 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                require 0 < mem[_3807]
                mem[_3807 + 32] = address(ext_call.return_data[0])
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[_2591]
                    require idx + 1 < mem[_3807]
                    mem[(32 * idx + 1) + _3807 + 32] = mem[(32 * idx) + _2591 + 44 len 20]
                    idx = idx + 1
                    continue 
                require mem[_3807] - 1 < mem[_3807]
                mem[(32 * mem[_3807] - 1) + _3807 + 32] = address(ext_call.return_data[0])
                if cd[(arg4 + 36)] == 1:
                    _5078 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _2589
                    mem[mem[64] + 68] = 160
                    _5112 = mem[_3807]
                    mem[mem[64] + 164] = mem[_3807]
                    idx = 0
                    s = _3807 + 32
                    t = mem[64] + 196
                    while idx < _5112:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_5078 + 100] = this.address
                    mem[_5078 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5078 + (32 * _5112) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6274 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6310 = mem[_6274]
                    require mem[_6274] <= test266151307()
                    require _6274 + return_data.size > _6274 + mem[_6274] + 31
                    _6346 = mem[_6274 + mem[_6274]]
                    require mem[_6274 + mem[_6274]] <= test266151307()
                    require (32 * mem[_6274 + mem[_6274]]) + 32 >= 0 and _6274 + ceil32(return_data.size) + (32 * mem[_6274 + mem[_6274]]) + 32 <= test266151307()
                    mem[64] = _6274 + ceil32(return_data.size) + (32 * mem[_6274 + mem[_6274]]) + 32
                    mem[_6274 + ceil32(return_data.size)] = _6346
                    require return_data.size >= _6310 + (32 * _6346) + 32
                    mem[_6274 + ceil32(return_data.size) + 32 len 32 * _6346] = mem[_6274 + _6310 + 32 len 32 * _6346]
                    require mem[_3807] - 1 < _6346
                    _7174 = mem[(32 * mem[_3807] - 1) + _6274 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3807] - 1) + _6274 + ceil32(return_data.size) + 32] <= _2589:
                        revert with 0, 'Nope!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2589
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2589
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7354] == bool(mem[_7354])
                    if not mem[_7354]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _7174 - _2589
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _7174 - _2589
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7570 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7570] == bool(mem[_7570])
                    if not mem[_7570]:
                        revert with 0, 'Take profit failed!'
                else:
                    if cd[(arg4 + 36)] != 2:
                        if cd[(arg4 + 36)] != 4:
                            if 0 <= _2589:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5255 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5255] == bool(mem[_5255])
                            if not mem[_5255]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = -_2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, -_2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5483 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5483] == bool(mem[_5483])
                            if not mem[_5483]:
                                revert with 0, 'Take profit failed!'
                        else:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2589
                            mem[mem[64] + 68] = 160
                            _5171 = mem[_3807]
                            mem[mem[64] + 164] = mem[_3807]
                            idx = 0
                            s = _3807 + 32
                            t = mem[64] + 196
                            while idx < _5171:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = -1
                            require ext_code.size(stor6)
                            call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _2589, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5171) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6272 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6308 = mem[_6272]
                            require mem[_6272] <= test266151307()
                            require _6272 + return_data.size > _6272 + mem[_6272] + 31
                            _6344 = mem[_6272 + mem[_6272]]
                            require mem[_6272 + mem[_6272]] <= test266151307()
                            require (32 * mem[_6272 + mem[_6272]]) + 32 >= 0 and _6272 + ceil32(return_data.size) + (32 * mem[_6272 + mem[_6272]]) + 32 <= test266151307()
                            mem[64] = _6272 + ceil32(return_data.size) + (32 * mem[_6272 + mem[_6272]]) + 32
                            mem[_6272 + ceil32(return_data.size)] = _6344
                            require return_data.size >= _6308 + (32 * _6344) + 32
                            mem[_6272 + ceil32(return_data.size) + 32 len 32 * _6344] = mem[_6272 + _6308 + 32 len 32 * _6344]
                            require mem[_3807] - 1 < _6344
                            _7172 = mem[(32 * mem[_3807] - 1) + _6272 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3807] - 1) + _6272 + ceil32(return_data.size) + 32] <= _2589:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7352] == bool(mem[_7352])
                            if not mem[_7352]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7172 - _2589
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7172 - _2589
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7568 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7568] == bool(mem[_7568])
                            if not mem[_7568]:
                                revert with 0, 'Take profit failed!'
                    else:
                        _5090 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2589
                        mem[mem[64] + 68] = 160
                        _5146 = mem[_3807]
                        mem[mem[64] + 164] = mem[_3807]
                        idx = 0
                        s = _3807 + 32
                        t = mem[64] + 196
                        while idx < _5146:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5090 + 100] = this.address
                        mem[_5090 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5090 + (32 * _5146) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6273 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6309 = mem[_6273]
                        require mem[_6273] <= test266151307()
                        require _6273 + return_data.size > _6273 + mem[_6273] + 31
                        _6345 = mem[_6273 + mem[_6273]]
                        require mem[_6273 + mem[_6273]] <= test266151307()
                        require (32 * mem[_6273 + mem[_6273]]) + 32 >= 0 and _6273 + ceil32(return_data.size) + (32 * mem[_6273 + mem[_6273]]) + 32 <= test266151307()
                        mem[64] = _6273 + ceil32(return_data.size) + (32 * mem[_6273 + mem[_6273]]) + 32
                        mem[_6273 + ceil32(return_data.size)] = _6345
                        require return_data.size >= _6309 + (32 * _6345) + 32
                        mem[_6273 + ceil32(return_data.size) + 32 len 32 * _6345] = mem[_6273 + _6309 + 32 len 32 * _6345]
                        require mem[_3807] - 1 < _6345
                        _7173 = mem[(32 * mem[_3807] - 1) + _6273 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3807] - 1) + _6273 + ceil32(return_data.size) + 32] <= _2589:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2589
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2589
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7353 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7353] == bool(mem[_7353])
                        if not mem[_7353]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7173 - _2589
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7173 - _2589
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7569 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7569] == bool(mem[_7569])
                        if not mem[_7569]:
                            revert with 0, 'Take profit failed!'
        else:
            mem[(4 * ceil32(return_data.size)) + 196] = arg3
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1336 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
            _1342 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _1342
            require return_data.size >= _1336 + (32 * _1342) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _1342] = mem[(4 * ceil32(return_data.size)) + _1336 + 224 len 32 * _1342]
            require 0 < _1342
            _2590 = mem[(6 * ceil32(return_data.size)) + 224]
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            _2592 = mem[64]
            require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
            mem[_2592] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            idx = 0
            s = arg4 + cd[(arg4 + 68)] + 68
            t = _2592 + 32
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
            _3808 = mem[64]
            mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
            if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                require 0 < mem[_3808]
                mem[_3808 + 32] = address(ext_call.return_data[0])
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[_2592]
                    require idx + 1 < mem[_3808]
                    mem[(32 * idx + 1) + _3808 + 32] = mem[(32 * idx) + _2592 + 44 len 20]
                    idx = idx + 1
                    continue 
                require mem[_3808] - 1 < mem[_3808]
                mem[(32 * mem[_3808] - 1) + _3808 + 32] = address(ext_call.return_data[0])
                if cd[(arg4 + 36)] == 1:
                    _5079 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _2590
                    mem[mem[64] + 68] = 160
                    _5114 = mem[_3808]
                    mem[mem[64] + 164] = mem[_3808]
                    idx = 0
                    s = _3808 + 32
                    t = mem[64] + 196
                    while idx < _5114:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_5079 + 100] = this.address
                    mem[_5079 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5079 + (32 * _5114) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6277 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6313 = mem[_6277]
                    require mem[_6277] <= test266151307()
                    require _6277 + return_data.size > _6277 + mem[_6277] + 31
                    _6349 = mem[_6277 + mem[_6277]]
                    require mem[_6277 + mem[_6277]] <= test266151307()
                    require (32 * mem[_6277 + mem[_6277]]) + 32 >= 0 and _6277 + ceil32(return_data.size) + (32 * mem[_6277 + mem[_6277]]) + 32 <= test266151307()
                    mem[64] = _6277 + ceil32(return_data.size) + (32 * mem[_6277 + mem[_6277]]) + 32
                    mem[_6277 + ceil32(return_data.size)] = _6349
                    require return_data.size >= _6313 + (32 * _6349) + 32
                    mem[_6277 + ceil32(return_data.size) + 32 len 32 * _6349] = mem[_6277 + _6313 + 32 len 32 * _6349]
                    require mem[_3808] - 1 < _6349
                    _7177 = mem[(32 * mem[_3808] - 1) + _6277 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3808] - 1) + _6277 + ceil32(return_data.size) + 32] <= _2590:
                        revert with 0, 'Nope!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2590
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2590
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7357 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7357] == bool(mem[_7357])
                    if not mem[_7357]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _7177 - _2590
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _7177 - _2590
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7573 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7573] == bool(mem[_7573])
                    if not mem[_7573]:
                        revert with 0, 'Take profit failed!'
                else:
                    if cd[(arg4 + 36)] == 2:
                        _5091 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2590
                        mem[mem[64] + 68] = 160
                        _5149 = mem[_3808]
                        mem[mem[64] + 164] = mem[_3808]
                        idx = 0
                        s = _3808 + 32
                        t = mem[64] + 196
                        while idx < _5149:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5091 + 100] = this.address
                        mem[_5091 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5091 + (32 * _5149) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6276 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6312 = mem[_6276]
                        require mem[_6276] <= test266151307()
                        require _6276 + return_data.size > _6276 + mem[_6276] + 31
                        _6348 = mem[_6276 + mem[_6276]]
                        require mem[_6276 + mem[_6276]] <= test266151307()
                        require (32 * mem[_6276 + mem[_6276]]) + 32 >= 0 and _6276 + ceil32(return_data.size) + (32 * mem[_6276 + mem[_6276]]) + 32 <= test266151307()
                        mem[64] = _6276 + ceil32(return_data.size) + (32 * mem[_6276 + mem[_6276]]) + 32
                        mem[_6276 + ceil32(return_data.size)] = _6348
                        require return_data.size >= _6312 + (32 * _6348) + 32
                        mem[_6276 + ceil32(return_data.size) + 32 len 32 * _6348] = mem[_6276 + _6312 + 32 len 32 * _6348]
                        require mem[_3808] - 1 < _6348
                        _7176 = mem[(32 * mem[_3808] - 1) + _6276 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3808] - 1) + _6276 + ceil32(return_data.size) + 32] <= _2590:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2590
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7356 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7356] == bool(mem[_7356])
                        if not mem[_7356]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7176 - _2590
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7176 - _2590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7572 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7572] == bool(mem[_7572])
                        if not mem[_7572]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] != 4:
                            if 0 <= _2590:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5257 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5257] == bool(mem[_5257])
                            if not mem[_5257]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = -_2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, -_2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5485 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5485] == bool(mem[_5485])
                            if not mem[_5485]:
                                revert with 0, 'Take profit failed!'
                        else:
                            _5113 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2590
                            mem[mem[64] + 68] = 160
                            _5173 = mem[_3808]
                            mem[mem[64] + 164] = mem[_3808]
                            idx = 0
                            s = _3808 + 32
                            t = mem[64] + 196
                            while idx < _5173:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5113 + 100] = this.address
                            mem[_5113 + 132] = -1
                            require ext_code.size(stor6)
                            call stor6.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5113 + (32 * _5173) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6275 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6311 = mem[_6275]
                            require mem[_6275] <= test266151307()
                            require _6275 + return_data.size > _6275 + mem[_6275] + 31
                            _6347 = mem[_6275 + mem[_6275]]
                            require mem[_6275 + mem[_6275]] <= test266151307()
                            require (32 * mem[_6275 + mem[_6275]]) + 32 >= 0 and _6275 + ceil32(return_data.size) + (32 * mem[_6275 + mem[_6275]]) + 32 <= test266151307()
                            mem[64] = _6275 + ceil32(return_data.size) + (32 * mem[_6275 + mem[_6275]]) + 32
                            mem[_6275 + ceil32(return_data.size)] = _6347
                            require return_data.size >= _6311 + (32 * _6347) + 32
                            mem[_6275 + ceil32(return_data.size) + 32 len 32 * _6347] = mem[_6275 + _6311 + 32 len 32 * _6347]
                            require mem[_3808] - 1 < _6347
                            _7175 = mem[(32 * mem[_3808] - 1) + _6275 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3808] - 1) + _6275 + ceil32(return_data.size) + 32] <= _2590:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7355 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7355] == bool(mem[_7355])
                            if not mem[_7355]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7175 - _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7175 - _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7571 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7571] == bool(mem[_7571])
                            if not mem[_7571]:
                                revert with 0, 'Take profit failed!'
            else:
                mem[_3808 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                require 0 < mem[_3808]
                mem[_3808 + 32] = address(ext_call.return_data[0])
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require idx < mem[_2592]
                    require idx + 1 < mem[_3808]
                    mem[(32 * idx + 1) + _3808 + 32] = mem[(32 * idx) + _2592 + 44 len 20]
                    idx = idx + 1
                    continue 
                require mem[_3808] - 1 < mem[_3808]
                mem[(32 * mem[_3808] - 1) + _3808 + 32] = address(ext_call.return_data[0])
                if cd[(arg4 + 36)] == 1:
                    _5080 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _2590
                    mem[mem[64] + 68] = 160
                    _5116 = mem[_3808]
                    mem[mem[64] + 164] = mem[_3808]
                    idx = 0
                    s = _3808 + 32
                    t = mem[64] + 196
                    while idx < _5116:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_5080 + 100] = this.address
                    mem[_5080 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5080 + (32 * _5116) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6280 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6316 = mem[_6280]
                    require mem[_6280] <= test266151307()
                    require _6280 + return_data.size > _6280 + mem[_6280] + 31
                    _6352 = mem[_6280 + mem[_6280]]
                    require mem[_6280 + mem[_6280]] <= test266151307()
                    require (32 * mem[_6280 + mem[_6280]]) + 32 >= 0 and _6280 + ceil32(return_data.size) + (32 * mem[_6280 + mem[_6280]]) + 32 <= test266151307()
                    mem[64] = _6280 + ceil32(return_data.size) + (32 * mem[_6280 + mem[_6280]]) + 32
                    mem[_6280 + ceil32(return_data.size)] = _6352
                    require return_data.size >= _6316 + (32 * _6352) + 32
                    mem[_6280 + ceil32(return_data.size) + 32 len 32 * _6352] = mem[_6280 + _6316 + 32 len 32 * _6352]
                    require mem[_3808] - 1 < _6352
                    _7180 = mem[(32 * mem[_3808] - 1) + _6280 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3808] - 1) + _6280 + ceil32(return_data.size) + 32] <= _2590:
                        revert with 0, 'Nope!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2590
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2590
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7360 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7360] == bool(mem[_7360])
                    if not mem[_7360]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _7180 - _2590
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _7180 - _2590
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7576] == bool(mem[_7576])
                    if not mem[_7576]:
                        revert with 0, 'Take profit failed!'
                else:
                    if cd[(arg4 + 36)] == 2:
                        _5092 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2590
                        mem[mem[64] + 68] = 160
                        _5152 = mem[_3808]
                        mem[mem[64] + 164] = mem[_3808]
                        idx = 0
                        s = _3808 + 32
                        t = mem[64] + 196
                        while idx < _5152:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5092 + 100] = this.address
                        mem[_5092 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5092 + (32 * _5152) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6279 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6315 = mem[_6279]
                        require mem[_6279] <= test266151307()
                        require _6279 + return_data.size > _6279 + mem[_6279] + 31
                        _6351 = mem[_6279 + mem[_6279]]
                        require mem[_6279 + mem[_6279]] <= test266151307()
                        require (32 * mem[_6279 + mem[_6279]]) + 32 >= 0 and _6279 + ceil32(return_data.size) + (32 * mem[_6279 + mem[_6279]]) + 32 <= test266151307()
                        mem[64] = _6279 + ceil32(return_data.size) + (32 * mem[_6279 + mem[_6279]]) + 32
                        mem[_6279 + ceil32(return_data.size)] = _6351
                        require return_data.size >= _6315 + (32 * _6351) + 32
                        mem[_6279 + ceil32(return_data.size) + 32 len 32 * _6351] = mem[_6279 + _6315 + 32 len 32 * _6351]
                        require mem[_3808] - 1 < _6351
                        _7179 = mem[(32 * mem[_3808] - 1) + _6279 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3808] - 1) + _6279 + ceil32(return_data.size) + 32] <= _2590:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2590
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7359 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7359] == bool(mem[_7359])
                        if not mem[_7359]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7179 - _2590
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7179 - _2590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7575] == bool(mem[_7575])
                        if not mem[_7575]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] != 4:
                            if 0 <= _2590:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5259 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5259] == bool(mem[_5259])
                            if not mem[_5259]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = -_2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, -_2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5487 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5487] == bool(mem[_5487])
                            if not mem[_5487]:
                                revert with 0, 'Take profit failed!'
                        else:
                            _5115 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2590
                            mem[mem[64] + 68] = 160
                            _5175 = mem[_3808]
                            mem[mem[64] + 164] = mem[_3808]
                            idx = 0
                            s = _3808 + 32
                            t = mem[64] + 196
                            while idx < _5175:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5115 + 100] = this.address
                            mem[_5115 + 132] = -1
                            require ext_code.size(stor6)
                            call stor6.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5115 + (32 * _5175) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6278 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6314 = mem[_6278]
                            require mem[_6278] <= test266151307()
                            require _6278 + return_data.size > _6278 + mem[_6278] + 31
                            _6350 = mem[_6278 + mem[_6278]]
                            require mem[_6278 + mem[_6278]] <= test266151307()
                            require (32 * mem[_6278 + mem[_6278]]) + 32 >= 0 and _6278 + ceil32(return_data.size) + (32 * mem[_6278 + mem[_6278]]) + 32 <= test266151307()
                            mem[64] = _6278 + ceil32(return_data.size) + (32 * mem[_6278 + mem[_6278]]) + 32
                            mem[_6278 + ceil32(return_data.size)] = _6350
                            require return_data.size >= _6314 + (32 * _6350) + 32
                            mem[_6278 + ceil32(return_data.size) + 32 len 32 * _6350] = mem[_6278 + _6314 + 32 len 32 * _6350]
                            require mem[_3808] - 1 < _6350
                            _7178 = mem[(32 * mem[_3808] - 1) + _6278 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3808] - 1) + _6278 + ceil32(return_data.size) + 32] <= _2590:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7358 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7358] == bool(mem[_7358])
                            if not mem[_7358]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7178 - _2590
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7178 - _2590
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7574 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7574] == bool(mem[_7574])
                            if not mem[_7574]:
                                revert with 0, 'Take profit failed!'
    else:
        mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        staticcall stor2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            mem[(6 * ceil32(return_data.size)) + 96] = 2
            mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if arg2:
                mem[(6 * ceil32(return_data.size)) + 196] = arg2
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1333 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
                _1339 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = _1339
                require return_data.size >= _1333 + (32 * _1339) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _1339] = mem[(6 * ceil32(return_data.size)) + _1333 + 224 len 32 * _1339]
                require 0 < _1339
                _2587 = mem[(7 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2595 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2595] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                idx = 0
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2595 + 32
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
                _3805 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                    require 0 < mem[_3805]
                    mem[_3805 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2595]
                        require idx + 1 < mem[_3805]
                        mem[(32 * idx + 1) + _3805 + 32] = mem[(32 * idx) + _2595 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3805] - 1 < mem[_3805]
                    mem[(32 * mem[_3805] - 1) + _3805 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2587
                        mem[mem[64] + 68] = 160
                        _5102 = mem[_3805]
                        mem[mem[64] + 164] = mem[_3805]
                        idx = 0
                        s = _3805 + 32
                        t = mem[64] + 196
                        while idx < _5102:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2587, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5102) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6259 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6295 = mem[_6259]
                        require mem[_6259] <= test266151307()
                        require _6259 + return_data.size > _6259 + mem[_6259] + 31
                        _6331 = mem[_6259 + mem[_6259]]
                        require mem[_6259 + mem[_6259]] <= test266151307()
                        require (32 * mem[_6259 + mem[_6259]]) + 32 >= 0 and _6259 + ceil32(return_data.size) + (32 * mem[_6259 + mem[_6259]]) + 32 <= test266151307()
                        mem[64] = _6259 + ceil32(return_data.size) + (32 * mem[_6259 + mem[_6259]]) + 32
                        mem[_6259 + ceil32(return_data.size)] = _6331
                        require return_data.size >= _6295 + (32 * _6331) + 32
                        mem[_6259 + ceil32(return_data.size) + 32 len 32 * _6331] = mem[_6259 + _6295 + 32 len 32 * _6331]
                        require mem[_3805] - 1 < _6331
                        _7159 = mem[(32 * mem[_3805] - 1) + _6259 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3805] - 1) + _6259 + ceil32(return_data.size) + 32] <= _2587:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2587
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2587
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7339 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7339] == bool(mem[_7339])
                        if not mem[_7339]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7159 - _2587
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7159 - _2587
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7555 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7555] == bool(mem[_7555])
                        if not mem[_7555]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2587
                            mem[mem[64] + 68] = 160
                            _5131 = mem[_3805]
                            mem[mem[64] + 164] = mem[_3805]
                            idx = 0
                            s = _3805 + 32
                            t = mem[64] + 196
                            while idx < _5131:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _2587, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5131) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6258 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6294 = mem[_6258]
                            require mem[_6258] <= test266151307()
                            require _6258 + return_data.size > _6258 + mem[_6258] + 31
                            _6330 = mem[_6258 + mem[_6258]]
                            require mem[_6258 + mem[_6258]] <= test266151307()
                            require (32 * mem[_6258 + mem[_6258]]) + 32 >= 0 and _6258 + ceil32(return_data.size) + (32 * mem[_6258 + mem[_6258]]) + 32 <= test266151307()
                            mem[64] = _6258 + ceil32(return_data.size) + (32 * mem[_6258 + mem[_6258]]) + 32
                            mem[_6258 + ceil32(return_data.size)] = _6330
                            require return_data.size >= _6294 + (32 * _6330) + 32
                            mem[_6258 + ceil32(return_data.size) + 32 len 32 * _6330] = mem[_6258 + _6294 + 32 len 32 * _6330]
                            require mem[_3805] - 1 < _6330
                            _7158 = mem[(32 * mem[_3805] - 1) + _6258 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3805] - 1) + _6258 + ceil32(return_data.size) + 32] <= _2587:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2587
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2587
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7338 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7338] == bool(mem[_7338])
                            if not mem[_7338]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7158 - _2587
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7158 - _2587
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7554 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7554] == bool(mem[_7554])
                            if not mem[_7554]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2587:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5245 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5245] == bool(mem[_5245])
                                if not mem[_5245]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5473 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5473] == bool(mem[_5473])
                                if not mem[_5473]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                _5101 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _2587
                                mem[mem[64] + 68] = 160
                                _5161 = mem[_3805]
                                mem[mem[64] + 164] = mem[_3805]
                                idx = 0
                                s = _3805 + 32
                                t = mem[64] + 196
                                while idx < _5161:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_5101 + 100] = this.address
                                mem[_5101 + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5101 + (32 * _5161) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6257 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6293 = mem[_6257]
                                require mem[_6257] <= test266151307()
                                require _6257 + return_data.size > _6257 + mem[_6257] + 31
                                _6329 = mem[_6257 + mem[_6257]]
                                require mem[_6257 + mem[_6257]] <= test266151307()
                                require (32 * mem[_6257 + mem[_6257]]) + 32 >= 0 and _6257 + ceil32(return_data.size) + (32 * mem[_6257 + mem[_6257]]) + 32 <= test266151307()
                                mem[64] = _6257 + ceil32(return_data.size) + (32 * mem[_6257 + mem[_6257]]) + 32
                                mem[_6257 + ceil32(return_data.size)] = _6329
                                require return_data.size >= _6293 + (32 * _6329) + 32
                                mem[_6257 + ceil32(return_data.size) + 32 len 32 * _6329] = mem[_6257 + _6293 + 32 len 32 * _6329]
                                require mem[_3805] - 1 < _6329
                                _7157 = mem[(32 * mem[_3805] - 1) + _6257 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3805] - 1) + _6257 + ceil32(return_data.size) + 32] <= _2587:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7337 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7337] == bool(mem[_7337])
                                if not mem[_7337]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7157 - _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7157 - _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7553 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7553] == bool(mem[_7553])
                                if not mem[_7553]:
                                    revert with 0, 'Take profit failed!'
                else:
                    mem[_3805 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                    require 0 < mem[_3805]
                    mem[_3805 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2595]
                        require idx + 1 < mem[_3805]
                        mem[(32 * idx + 1) + _3805 + 32] = mem[(32 * idx) + _2595 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3805] - 1 < mem[_3805]
                    mem[(32 * mem[_3805] - 1) + _3805 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        _5074 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2587
                        mem[mem[64] + 68] = 160
                        _5104 = mem[_3805]
                        mem[mem[64] + 164] = mem[_3805]
                        idx = 0
                        s = _3805 + 32
                        t = mem[64] + 196
                        while idx < _5104:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5074 + 100] = this.address
                        mem[_5074 + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5074 + (32 * _5104) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6262 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6298 = mem[_6262]
                        require mem[_6262] <= test266151307()
                        require _6262 + return_data.size > _6262 + mem[_6262] + 31
                        _6334 = mem[_6262 + mem[_6262]]
                        require mem[_6262 + mem[_6262]] <= test266151307()
                        require (32 * mem[_6262 + mem[_6262]]) + 32 >= 0 and _6262 + ceil32(return_data.size) + (32 * mem[_6262 + mem[_6262]]) + 32 <= test266151307()
                        mem[64] = _6262 + ceil32(return_data.size) + (32 * mem[_6262 + mem[_6262]]) + 32
                        mem[_6262 + ceil32(return_data.size)] = _6334
                        require return_data.size >= _6298 + (32 * _6334) + 32
                        mem[_6262 + ceil32(return_data.size) + 32 len 32 * _6334] = mem[_6262 + _6298 + 32 len 32 * _6334]
                        require mem[_3805] - 1 < _6334
                        _7162 = mem[(32 * mem[_3805] - 1) + _6262 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3805] - 1) + _6262 + ceil32(return_data.size) + 32] <= _2587:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2587
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2587
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7342 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7342] == bool(mem[_7342])
                        if not mem[_7342]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7162 - _2587
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7162 - _2587
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7558] == bool(mem[_7558])
                        if not mem[_7558]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2587
                            mem[mem[64] + 68] = 160
                            _5134 = mem[_3805]
                            mem[mem[64] + 164] = mem[_3805]
                            idx = 0
                            s = _3805 + 32
                            t = mem[64] + 196
                            while idx < _5134:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _2587, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5134) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6261 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6297 = mem[_6261]
                            require mem[_6261] <= test266151307()
                            require _6261 + return_data.size > _6261 + mem[_6261] + 31
                            _6333 = mem[_6261 + mem[_6261]]
                            require mem[_6261 + mem[_6261]] <= test266151307()
                            require (32 * mem[_6261 + mem[_6261]]) + 32 >= 0 and _6261 + ceil32(return_data.size) + (32 * mem[_6261 + mem[_6261]]) + 32 <= test266151307()
                            mem[64] = _6261 + ceil32(return_data.size) + (32 * mem[_6261 + mem[_6261]]) + 32
                            mem[_6261 + ceil32(return_data.size)] = _6333
                            require return_data.size >= _6297 + (32 * _6333) + 32
                            mem[_6261 + ceil32(return_data.size) + 32 len 32 * _6333] = mem[_6261 + _6297 + 32 len 32 * _6333]
                            require mem[_3805] - 1 < _6333
                            _7161 = mem[(32 * mem[_3805] - 1) + _6261 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3805] - 1) + _6261 + ceil32(return_data.size) + 32] <= _2587:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2587
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2587
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7341 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7341] == bool(mem[_7341])
                            if not mem[_7341]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7161 - _2587
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7161 - _2587
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7557 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7557] == bool(mem[_7557])
                            if not mem[_7557]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2587:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5247 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5247] == bool(mem[_5247])
                                if not mem[_5247]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5475 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5475] == bool(mem[_5475])
                                if not mem[_5475]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _2587
                                mem[mem[64] + 68] = 160
                                _5163 = mem[_3805]
                                mem[mem[64] + 164] = mem[_3805]
                                idx = 0
                                s = _3805 + 32
                                t = mem[64] + 196
                                while idx < _5163:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _2587, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5163) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6260 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6296 = mem[_6260]
                                require mem[_6260] <= test266151307()
                                require _6260 + return_data.size > _6260 + mem[_6260] + 31
                                _6332 = mem[_6260 + mem[_6260]]
                                require mem[_6260 + mem[_6260]] <= test266151307()
                                require (32 * mem[_6260 + mem[_6260]]) + 32 >= 0 and _6260 + ceil32(return_data.size) + (32 * mem[_6260 + mem[_6260]]) + 32 <= test266151307()
                                mem[64] = _6260 + ceil32(return_data.size) + (32 * mem[_6260 + mem[_6260]]) + 32
                                mem[_6260 + ceil32(return_data.size)] = _6332
                                require return_data.size >= _6296 + (32 * _6332) + 32
                                mem[_6260 + ceil32(return_data.size) + 32 len 32 * _6332] = mem[_6260 + _6296 + 32 len 32 * _6332]
                                require mem[_3805] - 1 < _6332
                                _7160 = mem[(32 * mem[_3805] - 1) + _6260 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3805] - 1) + _6260 + ceil32(return_data.size) + 32] <= _2587:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7340 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7340] == bool(mem[_7340])
                                if not mem[_7340]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7160 - _2587
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7160 - _2587
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7556 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7556] == bool(mem[_7556])
                                if not mem[_7556]:
                                    revert with 0, 'Take profit failed!'
            else:
                mem[(6 * ceil32(return_data.size)) + 196] = arg3
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1334 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _1340 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = _1340
                require return_data.size >= _1334 + (32 * _1340) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _1340] = mem[(6 * ceil32(return_data.size)) + _1334 + 224 len 32 * _1340]
                require 0 < _1340
                _2588 = mem[(7 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2596 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2596] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                idx = 0
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2596 + 32
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
                _3806 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                    require 0 < mem[_3806]
                    mem[_3806 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2596]
                        require idx + 1 < mem[_3806]
                        mem[(32 * idx + 1) + _3806 + 32] = mem[(32 * idx) + _2596 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3806] - 1 < mem[_3806]
                    mem[(32 * mem[_3806] - 1) + _3806 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2588
                        mem[mem[64] + 68] = 160
                        _5106 = mem[_3806]
                        mem[mem[64] + 164] = mem[_3806]
                        idx = 0
                        s = _3806 + 32
                        t = mem[64] + 196
                        while idx < _5106:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2588, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5106) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6265 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6301 = mem[_6265]
                        require mem[_6265] <= test266151307()
                        require _6265 + return_data.size > _6265 + mem[_6265] + 31
                        _6337 = mem[_6265 + mem[_6265]]
                        require mem[_6265 + mem[_6265]] <= test266151307()
                        require (32 * mem[_6265 + mem[_6265]]) + 32 >= 0 and _6265 + ceil32(return_data.size) + (32 * mem[_6265 + mem[_6265]]) + 32 <= test266151307()
                        mem[64] = _6265 + ceil32(return_data.size) + (32 * mem[_6265 + mem[_6265]]) + 32
                        mem[_6265 + ceil32(return_data.size)] = _6337
                        require return_data.size >= _6301 + (32 * _6337) + 32
                        mem[_6265 + ceil32(return_data.size) + 32 len 32 * _6337] = mem[_6265 + _6301 + 32 len 32 * _6337]
                        require mem[_3806] - 1 < _6337
                        _7165 = mem[(32 * mem[_3806] - 1) + _6265 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3806] - 1) + _6265 + ceil32(return_data.size) + 32] <= _2588:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2588
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2588
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7345 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7345] == bool(mem[_7345])
                        if not mem[_7345]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7165 - _2588
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7165 - _2588
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7561 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7561] == bool(mem[_7561])
                        if not mem[_7561]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            _5087 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2588
                            mem[mem[64] + 68] = 160
                            _5137 = mem[_3806]
                            mem[mem[64] + 164] = mem[_3806]
                            idx = 0
                            s = _3806 + 32
                            t = mem[64] + 196
                            while idx < _5137:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5087 + 100] = this.address
                            mem[_5087 + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5087 + (32 * _5137) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6264 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6300 = mem[_6264]
                            require mem[_6264] <= test266151307()
                            require _6264 + return_data.size > _6264 + mem[_6264] + 31
                            _6336 = mem[_6264 + mem[_6264]]
                            require mem[_6264 + mem[_6264]] <= test266151307()
                            require (32 * mem[_6264 + mem[_6264]]) + 32 >= 0 and _6264 + ceil32(return_data.size) + (32 * mem[_6264 + mem[_6264]]) + 32 <= test266151307()
                            mem[64] = _6264 + ceil32(return_data.size) + (32 * mem[_6264 + mem[_6264]]) + 32
                            mem[_6264 + ceil32(return_data.size)] = _6336
                            require return_data.size >= _6300 + (32 * _6336) + 32
                            mem[_6264 + ceil32(return_data.size) + 32 len 32 * _6336] = mem[_6264 + _6300 + 32 len 32 * _6336]
                            require mem[_3806] - 1 < _6336
                            _7164 = mem[(32 * mem[_3806] - 1) + _6264 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3806] - 1) + _6264 + ceil32(return_data.size) + 32] <= _2588:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2588
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2588
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7344 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7344] == bool(mem[_7344])
                            if not mem[_7344]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7164 - _2588
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7164 - _2588
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7560 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7560] == bool(mem[_7560])
                            if not mem[_7560]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2588:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5249 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5249] == bool(mem[_5249])
                                if not mem[_5249]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5477 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5477] == bool(mem[_5477])
                                if not mem[_5477]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                _5105 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _2588
                                mem[mem[64] + 68] = 160
                                _5165 = mem[_3806]
                                mem[mem[64] + 164] = mem[_3806]
                                idx = 0
                                s = _3806 + 32
                                t = mem[64] + 196
                                while idx < _5165:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_5105 + 100] = this.address
                                mem[_5105 + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5105 + (32 * _5165) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6263 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6299 = mem[_6263]
                                require mem[_6263] <= test266151307()
                                require _6263 + return_data.size > _6263 + mem[_6263] + 31
                                _6335 = mem[_6263 + mem[_6263]]
                                require mem[_6263 + mem[_6263]] <= test266151307()
                                require (32 * mem[_6263 + mem[_6263]]) + 32 >= 0 and _6263 + ceil32(return_data.size) + (32 * mem[_6263 + mem[_6263]]) + 32 <= test266151307()
                                mem[64] = _6263 + ceil32(return_data.size) + (32 * mem[_6263 + mem[_6263]]) + 32
                                mem[_6263 + ceil32(return_data.size)] = _6335
                                require return_data.size >= _6299 + (32 * _6335) + 32
                                mem[_6263 + ceil32(return_data.size) + 32 len 32 * _6335] = mem[_6263 + _6299 + 32 len 32 * _6335]
                                require mem[_3806] - 1 < _6335
                                _7163 = mem[(32 * mem[_3806] - 1) + _6263 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3806] - 1) + _6263 + ceil32(return_data.size) + 32] <= _2588:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7343 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7343] == bool(mem[_7343])
                                if not mem[_7343]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7163 - _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7163 - _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7559 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7559] == bool(mem[_7559])
                                if not mem[_7559]:
                                    revert with 0, 'Take profit failed!'
                else:
                    mem[_3806 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                    require 0 < mem[_3806]
                    mem[_3806 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2596]
                        require idx + 1 < mem[_3806]
                        mem[(32 * idx + 1) + _3806 + 32] = mem[(32 * idx) + _2596 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3806] - 1 < mem[_3806]
                    mem[(32 * mem[_3806] - 1) + _3806 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        _5076 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2588
                        mem[mem[64] + 68] = 160
                        _5108 = mem[_3806]
                        mem[mem[64] + 164] = mem[_3806]
                        idx = 0
                        s = _3806 + 32
                        t = mem[64] + 196
                        while idx < _5108:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5076 + 100] = this.address
                        mem[_5076 + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5076 + (32 * _5108) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6268 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6304 = mem[_6268]
                        require mem[_6268] <= test266151307()
                        require _6268 + return_data.size > _6268 + mem[_6268] + 31
                        _6340 = mem[_6268 + mem[_6268]]
                        require mem[_6268 + mem[_6268]] <= test266151307()
                        require (32 * mem[_6268 + mem[_6268]]) + 32 >= 0 and _6268 + ceil32(return_data.size) + (32 * mem[_6268 + mem[_6268]]) + 32 <= test266151307()
                        mem[64] = _6268 + ceil32(return_data.size) + (32 * mem[_6268 + mem[_6268]]) + 32
                        mem[_6268 + ceil32(return_data.size)] = _6340
                        require return_data.size >= _6304 + (32 * _6340) + 32
                        mem[_6268 + ceil32(return_data.size) + 32 len 32 * _6340] = mem[_6268 + _6304 + 32 len 32 * _6340]
                        require mem[_3806] - 1 < _6340
                        _7168 = mem[(32 * mem[_3806] - 1) + _6268 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3806] - 1) + _6268 + ceil32(return_data.size) + 32] <= _2588:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2588
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2588
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7348 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7348] == bool(mem[_7348])
                        if not mem[_7348]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7168 - _2588
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7168 - _2588
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7564 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7564] == bool(mem[_7564])
                        if not mem[_7564]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] != 2:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2588:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5251 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5251] == bool(mem[_5251])
                                if not mem[_5251]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5479 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5479] == bool(mem[_5479])
                                if not mem[_5479]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _2588
                                mem[mem[64] + 68] = 160
                                _5167 = mem[_3806]
                                mem[mem[64] + 164] = mem[_3806]
                                idx = 0
                                s = _3806 + 32
                                t = mem[64] + 196
                                while idx < _5167:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, _2588, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5167) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6266 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6302 = mem[_6266]
                                require mem[_6266] <= test266151307()
                                require _6266 + return_data.size > _6266 + mem[_6266] + 31
                                _6338 = mem[_6266 + mem[_6266]]
                                require mem[_6266 + mem[_6266]] <= test266151307()
                                require (32 * mem[_6266 + mem[_6266]]) + 32 >= 0 and _6266 + ceil32(return_data.size) + (32 * mem[_6266 + mem[_6266]]) + 32 <= test266151307()
                                mem[64] = _6266 + ceil32(return_data.size) + (32 * mem[_6266 + mem[_6266]]) + 32
                                mem[_6266 + ceil32(return_data.size)] = _6338
                                require return_data.size >= _6302 + (32 * _6338) + 32
                                mem[_6266 + ceil32(return_data.size) + 32 len 32 * _6338] = mem[_6266 + _6302 + 32 len 32 * _6338]
                                require mem[_3806] - 1 < _6338
                                _7166 = mem[(32 * mem[_3806] - 1) + _6266 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3806] - 1) + _6266 + ceil32(return_data.size) + 32] <= _2588:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7346 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7346] == bool(mem[_7346])
                                if not mem[_7346]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7166 - _2588
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7166 - _2588
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7562 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7562] == bool(mem[_7562])
                                if not mem[_7562]:
                                    revert with 0, 'Take profit failed!'
                        else:
                            _5088 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2588
                            mem[mem[64] + 68] = 160
                            _5140 = mem[_3806]
                            mem[mem[64] + 164] = mem[_3806]
                            idx = 0
                            s = _3806 + 32
                            t = mem[64] + 196
                            while idx < _5140:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5088 + 100] = this.address
                            mem[_5088 + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5088 + (32 * _5140) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6267 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6303 = mem[_6267]
                            require mem[_6267] <= test266151307()
                            require _6267 + return_data.size > _6267 + mem[_6267] + 31
                            _6339 = mem[_6267 + mem[_6267]]
                            require mem[_6267 + mem[_6267]] <= test266151307()
                            require (32 * mem[_6267 + mem[_6267]]) + 32 >= 0 and _6267 + ceil32(return_data.size) + (32 * mem[_6267 + mem[_6267]]) + 32 <= test266151307()
                            mem[64] = _6267 + ceil32(return_data.size) + (32 * mem[_6267 + mem[_6267]]) + 32
                            mem[_6267 + ceil32(return_data.size)] = _6339
                            require return_data.size >= _6303 + (32 * _6339) + 32
                            mem[_6267 + ceil32(return_data.size) + 32 len 32 * _6339] = mem[_6267 + _6303 + 32 len 32 * _6339]
                            require mem[_3806] - 1 < _6339
                            _7167 = mem[(32 * mem[_3806] - 1) + _6267 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3806] - 1) + _6267 + ceil32(return_data.size) + 32] <= _2588:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2588
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2588
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7347 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7347] == bool(mem[_7347])
                            if not mem[_7347]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7167 - _2588
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7167 - _2588
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7563 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7563] == bool(mem[_7563])
                            if not mem[_7563]:
                                revert with 0, 'Take profit failed!'
        else:
            mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            require ext_code.size(stor3)
            staticcall stor3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Unknown caller!'
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if arg2:
                mem[(7 * ceil32(return_data.size)) + 196] = arg2
                mem[(7 * ceil32(return_data.size)) + 228] = 64
                mem[(7 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1331 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 192 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
                _1337 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require return_data.size >= _1331 + (32 * _1337) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _1337] = mem[(7 * ceil32(return_data.size)) + _1331 + 224 len 32 * _1337]
                require 0 < _1337
                _2585 = mem[(8 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2593 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2593] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                idx = 0
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2593 + 32
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
                _3803 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                    require 0 < mem[_3803]
                    mem[_3803 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2593]
                        require idx + 1 < mem[_3803]
                        mem[(32 * idx + 1) + _3803 + 32] = mem[(32 * idx) + _2593 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3803] - 1 < mem[_3803]
                    mem[(32 * mem[_3803] - 1) + _3803 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2585
                        mem[mem[64] + 68] = 160
                        _5094 = mem[_3803]
                        mem[mem[64] + 164] = mem[_3803]
                        idx = 0
                        s = _3803 + 32
                        t = mem[64] + 196
                        while idx < _5094:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2585, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5094) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6247 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6283 = mem[_6247]
                        require mem[_6247] <= test266151307()
                        require _6247 + return_data.size > _6247 + mem[_6247] + 31
                        _6319 = mem[_6247 + mem[_6247]]
                        require mem[_6247 + mem[_6247]] <= test266151307()
                        require (32 * mem[_6247 + mem[_6247]]) + 32 >= 0 and _6247 + ceil32(return_data.size) + (32 * mem[_6247 + mem[_6247]]) + 32 <= test266151307()
                        mem[64] = _6247 + ceil32(return_data.size) + (32 * mem[_6247 + mem[_6247]]) + 32
                        mem[_6247 + ceil32(return_data.size)] = _6319
                        require return_data.size >= _6283 + (32 * _6319) + 32
                        mem[_6247 + ceil32(return_data.size) + 32 len 32 * _6319] = mem[_6247 + _6283 + 32 len 32 * _6319]
                        require mem[_3803] - 1 < _6319
                        _7147 = mem[(32 * mem[_3803] - 1) + _6247 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3803] - 1) + _6247 + ceil32(return_data.size) + 32] <= _2585:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2585
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2585
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7327] == bool(mem[_7327])
                        if not mem[_7327]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7147 - _2585
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7147 - _2585
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7543 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7543] == bool(mem[_7543])
                        if not mem[_7543]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2585
                            mem[mem[64] + 68] = 160
                            _5119 = mem[_3803]
                            mem[mem[64] + 164] = mem[_3803]
                            idx = 0
                            s = _3803 + 32
                            t = mem[64] + 196
                            while idx < _5119:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _2585, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5119) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6246 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6282 = mem[_6246]
                            require mem[_6246] <= test266151307()
                            require _6246 + return_data.size > _6246 + mem[_6246] + 31
                            _6318 = mem[_6246 + mem[_6246]]
                            require mem[_6246 + mem[_6246]] <= test266151307()
                            require (32 * mem[_6246 + mem[_6246]]) + 32 >= 0 and _6246 + ceil32(return_data.size) + (32 * mem[_6246 + mem[_6246]]) + 32 <= test266151307()
                            mem[64] = _6246 + ceil32(return_data.size) + (32 * mem[_6246 + mem[_6246]]) + 32
                            mem[_6246 + ceil32(return_data.size)] = _6318
                            require return_data.size >= _6282 + (32 * _6318) + 32
                            mem[_6246 + ceil32(return_data.size) + 32 len 32 * _6318] = mem[_6246 + _6282 + 32 len 32 * _6318]
                            require mem[_3803] - 1 < _6318
                            _7146 = mem[(32 * mem[_3803] - 1) + _6246 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3803] - 1) + _6246 + ceil32(return_data.size) + 32] <= _2585:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2585
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2585
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7326 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7326] == bool(mem[_7326])
                            if not mem[_7326]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7146 - _2585
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7146 - _2585
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7542 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7542] == bool(mem[_7542])
                            if not mem[_7542]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2585:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5237 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5237] == bool(mem[_5237])
                                if not mem[_5237]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5465 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5465] == bool(mem[_5465])
                                if not mem[_5465]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _2585
                                mem[mem[64] + 68] = 160
                                _5153 = mem[_3803]
                                mem[mem[64] + 164] = mem[_3803]
                                idx = 0
                                s = _3803 + 32
                                t = mem[64] + 196
                                while idx < _5153:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _2585, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5153) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6245 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6281 = mem[_6245]
                                require mem[_6245] <= test266151307()
                                require _6245 + return_data.size > _6245 + mem[_6245] + 31
                                _6317 = mem[_6245 + mem[_6245]]
                                require mem[_6245 + mem[_6245]] <= test266151307()
                                require (32 * mem[_6245 + mem[_6245]]) + 32 >= 0 and _6245 + ceil32(return_data.size) + (32 * mem[_6245 + mem[_6245]]) + 32 <= test266151307()
                                mem[64] = _6245 + ceil32(return_data.size) + (32 * mem[_6245 + mem[_6245]]) + 32
                                mem[_6245 + ceil32(return_data.size)] = _6317
                                require return_data.size >= _6281 + (32 * _6317) + 32
                                mem[_6245 + ceil32(return_data.size) + 32 len 32 * _6317] = mem[_6245 + _6281 + 32 len 32 * _6317]
                                require mem[_3803] - 1 < _6317
                                _7145 = mem[(32 * mem[_3803] - 1) + _6245 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3803] - 1) + _6245 + ceil32(return_data.size) + 32] <= _2585:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7325 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7325] == bool(mem[_7325])
                                if not mem[_7325]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7145 - _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7145 - _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7541 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7541] == bool(mem[_7541])
                                if not mem[_7541]:
                                    revert with 0, 'Take profit failed!'
                else:
                    mem[_3803 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                    require 0 < mem[_3803]
                    mem[_3803 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2593]
                        require idx + 1 < mem[_3803]
                        mem[(32 * idx + 1) + _3803 + 32] = mem[(32 * idx) + _2593 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3803] - 1 < mem[_3803]
                    mem[(32 * mem[_3803] - 1) + _3803 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        _5070 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _2585
                        mem[mem[64] + 68] = 160
                        _5096 = mem[_3803]
                        mem[mem[64] + 164] = mem[_3803]
                        idx = 0
                        s = _3803 + 32
                        t = mem[64] + 196
                        while idx < _5096:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5070 + 100] = this.address
                        mem[_5070 + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5070 + (32 * _5096) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6250 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6286 = mem[_6250]
                        require mem[_6250] <= test266151307()
                        require _6250 + return_data.size > _6250 + mem[_6250] + 31
                        _6322 = mem[_6250 + mem[_6250]]
                        require mem[_6250 + mem[_6250]] <= test266151307()
                        require (32 * mem[_6250 + mem[_6250]]) + 32 >= 0 and _6250 + ceil32(return_data.size) + (32 * mem[_6250 + mem[_6250]]) + 32 <= test266151307()
                        mem[64] = _6250 + ceil32(return_data.size) + (32 * mem[_6250 + mem[_6250]]) + 32
                        mem[_6250 + ceil32(return_data.size)] = _6322
                        require return_data.size >= _6286 + (32 * _6322) + 32
                        mem[_6250 + ceil32(return_data.size) + 32 len 32 * _6322] = mem[_6250 + _6286 + 32 len 32 * _6322]
                        require mem[_3803] - 1 < _6322
                        _7150 = mem[(32 * mem[_3803] - 1) + _6250 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3803] - 1) + _6250 + ceil32(return_data.size) + 32] <= _2585:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2585
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2585
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7330] == bool(mem[_7330])
                        if not mem[_7330]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7150 - _2585
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7150 - _2585
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7546 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7546] == bool(mem[_7546])
                        if not mem[_7546]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            _5082 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _2585
                            mem[mem[64] + 68] = 160
                            _5122 = mem[_3803]
                            mem[mem[64] + 164] = mem[_3803]
                            idx = 0
                            s = _3803 + 32
                            t = mem[64] + 196
                            while idx < _5122:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5082 + 100] = this.address
                            mem[_5082 + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5082 + (32 * _5122) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6249 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6285 = mem[_6249]
                            require mem[_6249] <= test266151307()
                            require _6249 + return_data.size > _6249 + mem[_6249] + 31
                            _6321 = mem[_6249 + mem[_6249]]
                            require mem[_6249 + mem[_6249]] <= test266151307()
                            require (32 * mem[_6249 + mem[_6249]]) + 32 >= 0 and _6249 + ceil32(return_data.size) + (32 * mem[_6249 + mem[_6249]]) + 32 <= test266151307()
                            mem[64] = _6249 + ceil32(return_data.size) + (32 * mem[_6249 + mem[_6249]]) + 32
                            mem[_6249 + ceil32(return_data.size)] = _6321
                            require return_data.size >= _6285 + (32 * _6321) + 32
                            mem[_6249 + ceil32(return_data.size) + 32 len 32 * _6321] = mem[_6249 + _6285 + 32 len 32 * _6321]
                            require mem[_3803] - 1 < _6321
                            _7149 = mem[(32 * mem[_3803] - 1) + _6249 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3803] - 1) + _6249 + ceil32(return_data.size) + 32] <= _2585:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2585
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2585
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7329 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7329] == bool(mem[_7329])
                            if not mem[_7329]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7149 - _2585
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7149 - _2585
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7545 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7545] == bool(mem[_7545])
                            if not mem[_7545]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2585:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5239 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5239] == bool(mem[_5239])
                                if not mem[_5239]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5467 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5467] == bool(mem[_5467])
                                if not mem[_5467]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                _5095 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _2585
                                mem[mem[64] + 68] = 160
                                _5155 = mem[_3803]
                                mem[mem[64] + 164] = mem[_3803]
                                idx = 0
                                s = _3803 + 32
                                t = mem[64] + 196
                                while idx < _5155:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_5095 + 100] = this.address
                                mem[_5095 + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5095 + (32 * _5155) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6248 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6284 = mem[_6248]
                                require mem[_6248] <= test266151307()
                                require _6248 + return_data.size > _6248 + mem[_6248] + 31
                                _6320 = mem[_6248 + mem[_6248]]
                                require mem[_6248 + mem[_6248]] <= test266151307()
                                require (32 * mem[_6248 + mem[_6248]]) + 32 >= 0 and _6248 + ceil32(return_data.size) + (32 * mem[_6248 + mem[_6248]]) + 32 <= test266151307()
                                mem[64] = _6248 + ceil32(return_data.size) + (32 * mem[_6248 + mem[_6248]]) + 32
                                mem[_6248 + ceil32(return_data.size)] = _6320
                                require return_data.size >= _6284 + (32 * _6320) + 32
                                mem[_6248 + ceil32(return_data.size) + 32 len 32 * _6320] = mem[_6248 + _6284 + 32 len 32 * _6320]
                                require mem[_3803] - 1 < _6320
                                _7148 = mem[(32 * mem[_3803] - 1) + _6248 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3803] - 1) + _6248 + ceil32(return_data.size) + 32] <= _2585:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7328 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7328] == bool(mem[_7328])
                                if not mem[_7328]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7148 - _2585
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7148 - _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7544 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7544] == bool(mem[_7544])
                                if not mem[_7544]:
                                    revert with 0, 'Take profit failed!'
            else:
                mem[(7 * ceil32(return_data.size)) + 196] = arg3
                mem[(7 * ceil32(return_data.size)) + 228] = 64
                mem[(7 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1332 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 192 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _1338 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _1332 + (32 * _1338) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _1338] = mem[(7 * ceil32(return_data.size)) + _1332 + 224 len 32 * _1338]
                require 0 < _1338
                _2586 = mem[(8 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2594 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2594] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                idx = 0
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2594 + 32
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2 <= test266151307()
                _3804 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2:
                    require 0 < mem[_3804]
                    mem[_3804 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2594]
                        require idx + 1 < mem[_3804]
                        mem[(32 * idx + 1) + _3804 + 32] = mem[(32 * idx) + _2594 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3804] - 1 < mem[_3804]
                    mem[(32 * mem[_3804] - 1) + _3804 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2586
                        mem[mem[64] + 68] = 160
                        _5098 = mem[_3804]
                        mem[mem[64] + 164] = mem[_3804]
                        idx = 0
                        s = _3804 + 32
                        t = mem[64] + 196
                        while idx < _5098:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2586, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5098) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6253 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6289 = mem[_6253]
                        require mem[_6253] <= test266151307()
                        require _6253 + return_data.size > _6253 + mem[_6253] + 31
                        _6325 = mem[_6253 + mem[_6253]]
                        require mem[_6253 + mem[_6253]] <= test266151307()
                        require (32 * mem[_6253 + mem[_6253]]) + 32 >= 0 and _6253 + ceil32(return_data.size) + (32 * mem[_6253 + mem[_6253]]) + 32 <= test266151307()
                        mem[64] = _6253 + ceil32(return_data.size) + (32 * mem[_6253 + mem[_6253]]) + 32
                        mem[_6253 + ceil32(return_data.size)] = _6325
                        require return_data.size >= _6289 + (32 * _6325) + 32
                        mem[_6253 + ceil32(return_data.size) + 32 len 32 * _6325] = mem[_6253 + _6289 + 32 len 32 * _6325]
                        require mem[_3804] - 1 < _6325
                        _7153 = mem[(32 * mem[_3804] - 1) + _6253 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3804] - 1) + _6253 + ceil32(return_data.size) + 32] <= _2586:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2586
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2586
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7333] == bool(mem[_7333])
                        if not mem[_7333]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7153 - _2586
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7153 - _2586
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7549] == bool(mem[_7549])
                        if not mem[_7549]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            _5083 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2586
                            mem[mem[64] + 68] = 160
                            _5125 = mem[_3804]
                            mem[mem[64] + 164] = mem[_3804]
                            idx = 0
                            s = _3804 + 32
                            t = mem[64] + 196
                            while idx < _5125:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5083 + 100] = this.address
                            mem[_5083 + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5083 + (32 * _5125) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6252 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6288 = mem[_6252]
                            require mem[_6252] <= test266151307()
                            require _6252 + return_data.size > _6252 + mem[_6252] + 31
                            _6324 = mem[_6252 + mem[_6252]]
                            require mem[_6252 + mem[_6252]] <= test266151307()
                            require (32 * mem[_6252 + mem[_6252]]) + 32 >= 0 and _6252 + ceil32(return_data.size) + (32 * mem[_6252 + mem[_6252]]) + 32 <= test266151307()
                            mem[64] = _6252 + ceil32(return_data.size) + (32 * mem[_6252 + mem[_6252]]) + 32
                            mem[_6252 + ceil32(return_data.size)] = _6324
                            require return_data.size >= _6288 + (32 * _6324) + 32
                            mem[_6252 + ceil32(return_data.size) + 32 len 32 * _6324] = mem[_6252 + _6288 + 32 len 32 * _6324]
                            require mem[_3804] - 1 < _6324
                            _7152 = mem[(32 * mem[_3804] - 1) + _6252 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3804] - 1) + _6252 + ceil32(return_data.size) + 32] <= _2586:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2586
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2586
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7332] == bool(mem[_7332])
                            if not mem[_7332]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7152 - _2586
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7152 - _2586
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7548 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7548] == bool(mem[_7548])
                            if not mem[_7548]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2586:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5241 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5241] == bool(mem[_5241])
                                if not mem[_5241]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5469 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5469] == bool(mem[_5469])
                                if not mem[_5469]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                _5097 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _2586
                                mem[mem[64] + 68] = 160
                                _5157 = mem[_3804]
                                mem[mem[64] + 164] = mem[_3804]
                                idx = 0
                                s = _3804 + 32
                                t = mem[64] + 196
                                while idx < _5157:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_5097 + 100] = this.address
                                mem[_5097 + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5097 + (32 * _5157) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6251 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6287 = mem[_6251]
                                require mem[_6251] <= test266151307()
                                require _6251 + return_data.size > _6251 + mem[_6251] + 31
                                _6323 = mem[_6251 + mem[_6251]]
                                require mem[_6251 + mem[_6251]] <= test266151307()
                                require (32 * mem[_6251 + mem[_6251]]) + 32 >= 0 and _6251 + ceil32(return_data.size) + (32 * mem[_6251 + mem[_6251]]) + 32 <= test266151307()
                                mem[64] = _6251 + ceil32(return_data.size) + (32 * mem[_6251 + mem[_6251]]) + 32
                                mem[_6251 + ceil32(return_data.size)] = _6323
                                require return_data.size >= _6287 + (32 * _6323) + 32
                                mem[_6251 + ceil32(return_data.size) + 32 len 32 * _6323] = mem[_6251 + _6287 + 32 len 32 * _6323]
                                require mem[_3804] - 1 < _6323
                                _7151 = mem[(32 * mem[_3804] - 1) + _6251 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3804] - 1) + _6251 + ceil32(return_data.size) + 32] <= _2586:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7331 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7331] == bool(mem[_7331])
                                if not mem[_7331]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7151 - _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7151 - _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7547 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7547] == bool(mem[_7547])
                                if not mem[_7547]:
                                    revert with 0, 'Take profit failed!'
                else:
                    mem[_3804 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] + 2]
                    require 0 < mem[_3804]
                    mem[_3804 + 32] = address(ext_call.return_data[0])
                    idx = 0
                    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                        require idx < mem[_2594]
                        require idx + 1 < mem[_3804]
                        mem[(32 * idx + 1) + _3804 + 32] = mem[(32 * idx) + _2594 + 44 len 20]
                        idx = idx + 1
                        continue 
                    require mem[_3804] - 1 < mem[_3804]
                    mem[(32 * mem[_3804] - 1) + _3804 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _2586
                        mem[mem[64] + 68] = 160
                        _5100 = mem[_3804]
                        mem[mem[64] + 164] = mem[_3804]
                        idx = 0
                        s = _3804 + 32
                        t = mem[64] + 196
                        while idx < _5100:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2586, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _5100) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6256 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6292 = mem[_6256]
                        require mem[_6256] <= test266151307()
                        require _6256 + return_data.size > _6256 + mem[_6256] + 31
                        _6328 = mem[_6256 + mem[_6256]]
                        require mem[_6256 + mem[_6256]] <= test266151307()
                        require (32 * mem[_6256 + mem[_6256]]) + 32 >= 0 and _6256 + ceil32(return_data.size) + (32 * mem[_6256 + mem[_6256]]) + 32 <= test266151307()
                        mem[64] = _6256 + ceil32(return_data.size) + (32 * mem[_6256 + mem[_6256]]) + 32
                        mem[_6256 + ceil32(return_data.size)] = _6328
                        require return_data.size >= _6292 + (32 * _6328) + 32
                        mem[_6256 + ceil32(return_data.size) + 32 len 32 * _6328] = mem[_6256 + _6292 + 32 len 32 * _6328]
                        require mem[_3804] - 1 < _6328
                        _7156 = mem[(32 * mem[_3804] - 1) + _6256 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3804] - 1) + _6256 + ceil32(return_data.size) + 32] <= _2586:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2586
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2586
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7336 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7336] == bool(mem[_7336])
                        if not mem[_7336]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _7156 - _2586
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _7156 - _2586
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7552 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7552] == bool(mem[_7552])
                        if not mem[_7552]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            _5084 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _2586
                            mem[mem[64] + 68] = 160
                            _5128 = mem[_3804]
                            mem[mem[64] + 164] = mem[_3804]
                            idx = 0
                            s = _3804 + 32
                            t = mem[64] + 196
                            while idx < _5128:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5084 + 100] = this.address
                            mem[_5084 + 132] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5084 + (32 * _5128) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6255 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6291 = mem[_6255]
                            require mem[_6255] <= test266151307()
                            require _6255 + return_data.size > _6255 + mem[_6255] + 31
                            _6327 = mem[_6255 + mem[_6255]]
                            require mem[_6255 + mem[_6255]] <= test266151307()
                            require (32 * mem[_6255 + mem[_6255]]) + 32 >= 0 and _6255 + ceil32(return_data.size) + (32 * mem[_6255 + mem[_6255]]) + 32 <= test266151307()
                            mem[64] = _6255 + ceil32(return_data.size) + (32 * mem[_6255 + mem[_6255]]) + 32
                            mem[_6255 + ceil32(return_data.size)] = _6327
                            require return_data.size >= _6291 + (32 * _6327) + 32
                            mem[_6255 + ceil32(return_data.size) + 32 len 32 * _6327] = mem[_6255 + _6291 + 32 len 32 * _6327]
                            require mem[_3804] - 1 < _6327
                            _7155 = mem[(32 * mem[_3804] - 1) + _6255 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3804] - 1) + _6255 + ceil32(return_data.size) + 32] <= _2586:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2586
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2586
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7335 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7335] == bool(mem[_7335])
                            if not mem[_7335]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _7155 - _2586
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _7155 - _2586
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7551 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7551] == bool(mem[_7551])
                            if not mem[_7551]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _2586:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5243 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5243] == bool(mem[_5243])
                                if not mem[_5243]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = -_2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5471 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5471] == bool(mem[_5471])
                                if not mem[_5471]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                _5099 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg3
                                mem[mem[64] + 36] = _2586
                                mem[mem[64] + 68] = 160
                                _5159 = mem[_3804]
                                mem[mem[64] + 164] = mem[_3804]
                                idx = 0
                                s = _3804 + 32
                                t = mem[64] + 196
                                while idx < _5159:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_5099 + 100] = this.address
                                mem[_5099 + 132] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5099 + (32 * _5159) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6254 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6290 = mem[_6254]
                                require mem[_6254] <= test266151307()
                                require _6254 + return_data.size > _6254 + mem[_6254] + 31
                                _6326 = mem[_6254 + mem[_6254]]
                                require mem[_6254 + mem[_6254]] <= test266151307()
                                require (32 * mem[_6254 + mem[_6254]]) + 32 >= 0 and _6254 + ceil32(return_data.size) + (32 * mem[_6254 + mem[_6254]]) + 32 <= test266151307()
                                mem[64] = _6254 + ceil32(return_data.size) + (32 * mem[_6254 + mem[_6254]]) + 32
                                mem[_6254 + ceil32(return_data.size)] = _6326
                                require return_data.size >= _6290 + (32 * _6326) + 32
                                mem[_6254 + ceil32(return_data.size) + 32 len 32 * _6326] = mem[_6254 + _6290 + 32 len 32 * _6326]
                                require mem[_3804] - 1 < _6326
                                _7154 = mem[(32 * mem[_3804] - 1) + _6254 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_3804] - 1) + _6254 + ceil32(return_data.size) + 32] <= _2586:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7334 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7334] == bool(mem[_7334])
                                if not mem[_7334]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _7154 - _2586
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _7154 - _2586
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7550 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7550] == bool(mem[_7550])
                                if not mem[_7550]:
                                    revert with 0, 'Take profit failed!'
}



}
