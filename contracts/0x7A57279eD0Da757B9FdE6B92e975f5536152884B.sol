contract main {




// =====================  Runtime code  =====================


#
#  - sub_7d14b854(?)
#  - sub_beab0d1d(?)
#
address stor0;

function sub_83ddf312(?) {
  stop
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner!'
    stor0 = arg1
}

function withdrawAll() {
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner!'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function Balance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawAll(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function Approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getPairsByIndexRange(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0]:
        if arg3 < arg2:
            revert with 0, 'start cannot be higher than stop'
        require arg3 - arg2 <= test266151307()
        mem[96] = arg3 - arg2
        mem[64] = (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = 0
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = address(ext_call.return_data[0])
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _117 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _117:
                _260 = mem[(32 * idx) + 128]
                t = 0
                while t < 96:
                    mem[2 * t] = mem[_260 + t]
                    t = t + 32
                    continue 
                t = 192
                idx = idx + 1
                continue 
        else:
            mem[64] = (32 * arg3 - arg2) + 224
            mem[(32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
            mem[var15001] = (32 * arg3 - arg2) + 128
            s = var15001
            idx = var15002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = (32 * arg3 - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = address(ext_call.return_data[0])
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _269 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _269:
                _318 = mem[(32 * idx) + 128]
                t = 0
                while t < 96:
                    mem[2 * t] = mem[_318 + t]
                    t = t + 32
                    continue 
                t = 192
                idx = idx + 1
                continue 
    else:
        if ext_call.return_data[0] < arg2:
            revert with 0, 'start cannot be higher than stop'
        require ext_call.return_data[0] - arg2 <= test266151307()
        mem[96] = ext_call.return_data[0] - arg2
        mem[64] = (32 * ext_call.return_data[0] - arg2) + 128
        if not ext_call.return_data[0] - arg2:
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = address(ext_call.return_data[0])
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _120 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _120:
                _264 = mem[(32 * idx) + 128]
                t = 0
                while t < 96:
                    mem[2 * t] = mem[_264 + t]
                    t = t + 32
                    continue 
                t = 192
                idx = idx + 1
                continue 
        else:
            mem[64] = (32 * ext_call.return_data[0] - arg2) + 224
            mem[(32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
            mem[var16001] = (32 * ext_call.return_data[0] - arg2) + 128
            s = var16001
            idx = var16002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = (32 * ext_call.return_data[0] - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = address(ext_call.return_data[0])
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _272 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _272:
                _320 = mem[(32 * idx) + 128]
                t = 0
                while t < 96:
                    mem[2 * t] = mem[_320 + t]
                    t = t + 32
                    continue 
                t = 192
                idx = idx + 1
                continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
