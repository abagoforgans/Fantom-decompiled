contract main {




// =====================  Runtime code  =====================


#
#  - sub_2388d59b(?)
#
address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_01ceebeb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor1 = address(arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_65e04398(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(arg2)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_14593be1(?) {
    require calldata.size - 4 >= 128
    require cd[36] == bool(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require 4 <= ('cd', 100).length
    require ('cd', 100).length <= ('cd', 100).length
    mem[128] = address(this.address)
    mem[96] = 20
    mem[216] = this.address
    mem[248] = -1
    require ext_code.size(0xc47812857a74425e2039b57891a3dfcf51602d5d)
    call 0xc47812857a74425e2039b57891a3dfcf51602d5d.liquidateWithGasToken(bytes32 rg1, address rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args cd[4] xor sha3(this.address), address(this.address), address(this.address), -1
    mem[148 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require 1 < ('cd', 100).length
    require ('cd', 100)[1] == address(('cd', 100)[1])
    if address(('cd', 100)[1]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        require 3 < ('cd', 100).length
        require ('cd', 100)[3] == address(('cd', 100)[3])
        mem[ceil32(return_data.size) + 148] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 152] = ext_call.return_data[32]
        mem[ceil32(return_data.size) + 184] = 1
        mem[ceil32(return_data.size) + 216] = 160
        mem[ceil32(return_data.size) + 312] = ('cd', 100).length - 4
        idx = 0
        s = cd[100] + 164
        t = ceil32(return_data.size) + 344
        while idx < ('cd', 100).length - 4:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 248] = this.address
        mem[ceil32(return_data.size) + 280] = block.timestamp
        require ext_code.size(address(('cd', 100)[3]))
        call address(('cd', 100)[3]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[32], 1, 160, address(this.address), block.timestamp, mem[ceil32(return_data.size) + 312 len (32 * ('cd', 100).length - 4) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 148 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 148
        require return_data.size >= 32
        _130 = mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28]
        require mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 148 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 179
        _133 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]) + 180 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]) + 180
        mem[(2 * ceil32(return_data.size)) + 148] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]
        require return_data.size >= _130 + (32 * _133) + 32
        mem[(2 * ceil32(return_data.size)) + 180 len 32 * _133] = mem[ceil32(return_data.size) + _130 + 180 len 32 * _133]
        if not cd[36]:
            require 0 < ('cd', 100).length
            require ('cd', 100)[0] == address(('cd', 100)[0])
            require 2 < ('cd', 100).length
            require ('cd', 100)[2] == address(('cd', 100)[2])
            mem[mem[64] + 4] = address(('cd', 100)[2])
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(('cd', 100)[0]))
            call address(('cd', 100)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 100)[2]), cd[68]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _256 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_256] == bool(mem[_256])
            require 0 < ('cd', 100).length
            require ('cd', 100)[0] == address(('cd', 100)[0])
            require ('cd', 100).length - 5 < _133
            _275 = mem[64]
            mem[mem[64] + 32] = address(('cd', 100)[0])
            mem[mem[64] + 64] = mem[(32 * ('cd', 100).length - 5) + (2 * ceil32(return_data.size)) + 180] - ext_call.return_data[0]
            _283 = mem[64]
            mem[64] = mem[64] + 96
            mem[_275 + 96] = 32
            _298 = mem[_283]
            mem[_275 + 128] = mem[_283]
            mem[_275 + 160 len ceil32(_298)] = mem[_283 + 32 len ceil32(_298)]
            if ceil32(_298) > _298:
                mem[_275 + _298 + 160] = 0
            return memory
              from mem[64]
               len ceil32(_298) + _275 + -mem[64] + 160
        require ('cd', 100).length - 5 < _133
        if mem[(32 * ('cd', 100).length - 5) + (2 * ceil32(return_data.size)) + 180] <= ext_call.return_data[0]:
            revert with 0, 'no profit'
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require 2 < ('cd', 100).length
        require ('cd', 100)[2] == address(('cd', 100)[2])
        mem[mem[64] + 4] = address(('cd', 100)[2])
        mem[mem[64] + 36] = cd[68]
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[2]), cd[68]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_263] == bool(mem[_263])
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require ('cd', 100).length - 5 < _133
        _285 = mem[64]
        mem[mem[64] + 32] = address(('cd', 100)[0])
        mem[mem[64] + 64] = mem[(32 * ('cd', 100).length - 5) + (2 * ceil32(return_data.size)) + 180] - ext_call.return_data[0]
        _295 = mem[64]
        mem[64] = mem[64] + 96
        mem[_285 + 96] = 32
        _304 = mem[_295]
        mem[_285 + 128] = mem[_295]
        mem[_285 + 160 len ceil32(_304)] = mem[_295 + 32 len ceil32(_304)]
        if ceil32(_304) > _304:
            mem[_285 + _304 + 160] = 0
        return memory
          from mem[64]
           len ceil32(_304) + _285 + -mem[64] + 160
    if not eth.balance(this.address):
        require 3 < ('cd', 100).length
        require ('cd', 100)[3] == address(('cd', 100)[3])
        mem[ceil32(return_data.size) + 148] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 152] = ext_call.return_data[32]
        mem[ceil32(return_data.size) + 184] = 1
        mem[ceil32(return_data.size) + 216] = 160
        mem[ceil32(return_data.size) + 312] = ('cd', 100).length - 4
        idx = 0
        s = cd[100] + 164
        t = ceil32(return_data.size) + 344
        while idx < ('cd', 100).length - 4:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 248] = this.address
        mem[ceil32(return_data.size) + 280] = block.timestamp
        require ext_code.size(address(('cd', 100)[3]))
        call address(('cd', 100)[3]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[32], 1, 160, address(this.address), block.timestamp, mem[ceil32(return_data.size) + 312 len (32 * ('cd', 100).length - 4) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 148 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 148
        require return_data.size >= 32
        _131 = mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28]
        require mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 148 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 179
        _134 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]) + 180 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]) + 180
        mem[(2 * ceil32(return_data.size)) + 148] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]
        require return_data.size >= _131 + (32 * _134) + 32
        mem[(2 * ceil32(return_data.size)) + 180 len 32 * _134] = mem[ceil32(return_data.size) + _131 + 180 len 32 * _134]
        if not cd[36]:
            require 0 < ('cd', 100).length
            require ('cd', 100)[0] == address(('cd', 100)[0])
            require 2 < ('cd', 100).length
            require ('cd', 100)[2] == address(('cd', 100)[2])
            mem[mem[64] + 4] = address(('cd', 100)[2])
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(('cd', 100)[0]))
            call address(('cd', 100)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 100)[2]), cd[68]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_258] == bool(mem[_258])
            require 0 < ('cd', 100).length
            require ('cd', 100)[0] == address(('cd', 100)[0])
            require ('cd', 100).length - 5 < _134
            _277 = mem[64]
            mem[mem[64] + 32] = address(('cd', 100)[0])
            mem[mem[64] + 64] = mem[(32 * ('cd', 100).length - 5) + (2 * ceil32(return_data.size)) + 180] - ext_call.return_data[0]
            _286 = mem[64]
            mem[64] = mem[64] + 96
            mem[_277 + 96] = 32
            _300 = mem[_286]
            mem[_277 + 128] = mem[_286]
            mem[_277 + 160 len ceil32(_300)] = mem[_286 + 32 len ceil32(_300)]
            if ceil32(_300) > _300:
                mem[_277 + _300 + 160] = 0
            return memory
              from mem[64]
               len ceil32(_300) + _277 + -mem[64] + 160
        require ('cd', 100).length - 5 < _134
        if mem[(32 * ('cd', 100).length - 5) + (2 * ceil32(return_data.size)) + 180] <= ext_call.return_data[0]:
            revert with 0, 'no profit'
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require 2 < ('cd', 100).length
        require ('cd', 100)[2] == address(('cd', 100)[2])
        mem[mem[64] + 4] = address(('cd', 100)[2])
        mem[mem[64] + 36] = cd[68]
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[2]), cd[68]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_265] == bool(mem[_265])
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require ('cd', 100).length - 5 < _134
        _288 = mem[64]
        mem[mem[64] + 32] = address(('cd', 100)[0])
        mem[mem[64] + 64] = mem[(32 * ('cd', 100).length - 5) + (2 * ceil32(return_data.size)) + 180] - ext_call.return_data[0]
        _296 = mem[64]
        mem[64] = mem[64] + 96
        mem[_288 + 96] = 32
        _305 = mem[_296]
        mem[_288 + 128] = mem[_296]
        mem[_288 + 160 len ceil32(_305)] = mem[_296 + 32 len ceil32(_305)]
        if ceil32(_305) > _305:
            mem[_288 + _305 + 160] = 0
        return memory
          from mem[64]
           len ceil32(_305) + _288 + -mem[64] + 160
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 3 < ('cd', 100).length
    require ('cd', 100)[3] == address(('cd', 100)[3])
    mem[ceil32(return_data.size) + 148] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 152] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 184] = 1
    mem[ceil32(return_data.size) + 216] = 160
    mem[ceil32(return_data.size) + 312] = ('cd', 100).length - 4
    idx = 0
    s = cd[100] + 164
    t = ceil32(return_data.size) + 344
    while idx < ('cd', 100).length - 4:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 248] = this.address
    mem[ceil32(return_data.size) + 280] = block.timestamp
    require ext_code.size(address(('cd', 100)[3]))
    call address(('cd', 100)[3]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 1, 160, address(this.address), block.timestamp, mem[ceil32(return_data.size) + 312 len (32 * ('cd', 100).length - 4) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 148 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 148
    require return_data.size >= 32
    _132 = mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28]
    require mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] <= test266151307()
    require ceil32(return_data.size) + return_data.size + 148 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 179
    _135 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]) + 180 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]) + 180
    mem[(2 * ceil32(return_data.size)) + 148] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148 len 4], ext_call.return_data[32 len 28] + 148]
    require return_data.size >= _132 + (32 * _135) + 32
    mem[(2 * ceil32(return_data.size)) + 180 len 32 * _135] = mem[ceil32(return_data.size) + _132 + 180 len 32 * _135]
    if not cd[36]:
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require 2 < ('cd', 100).length
        require ('cd', 100)[2] == address(('cd', 100)[2])
        mem[mem[64] + 4] = address(('cd', 100)[2])
        mem[mem[64] + 36] = cd[68]
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[2]), cd[68]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _260 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_260] == bool(mem[_260])
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require ('cd', 100).length - 5 < _135
        _279 = mem[64]
        mem[mem[64] + 32] = address(('cd', 100)[0])
        mem[mem[64] + 64] = mem[(32 * ('cd', 100).length - 5) + (2 * ceil32(return_data.size)) + 180] - ext_call.return_data[0]
        _289 = mem[64]
        mem[64] = mem[64] + 96
        mem[_279 + 96] = 32
        _302 = mem[_289]
        mem[_279 + 128] = mem[_289]
        mem[_279 + 160 len ceil32(_302)] = mem[_289 + 32 len ceil32(_302)]
        if ceil32(_302) > _302:
            mem[_279 + _302 + 160] = 0
        return memory
          from mem[64]
           len ceil32(_302) + _279 + -mem[64] + 160
    require ('cd', 100).length - 5 < _135
    if mem[(32 * ('cd', 100).length - 5) + (2 * ceil32(return_data.size)) + 180] <= ext_call.return_data[0]:
        revert with 0, 'no profit'
    require 0 < ('cd', 100).length
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require 2 < ('cd', 100).length
    require ('cd', 100)[2] == address(('cd', 100)[2])
    mem[mem[64] + 4] = address(('cd', 100)[2])
    mem[mem[64] + 36] = cd[68]
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 100)[2]), cd[68]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _267 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_267] == bool(mem[_267])
    require 0 < ('cd', 100).length
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require ('cd', 100).length - 5 < _135
    _291 = mem[64]
    mem[mem[64] + 32] = address(('cd', 100)[0])
    mem[mem[64] + 64] = mem[(32 * ('cd', 100).length - 5) + (2 * ceil32(return_data.size)) + 180] - ext_call.return_data[0]
    _297 = mem[64]
    mem[64] = mem[64] + 96
    mem[_291 + 96] = 32
    _306 = mem[_297]
    mem[_291 + 128] = mem[_297]
    mem[_291 + 160 len ceil32(_306)] = mem[_297 + 32 len ceil32(_306)]
    if ceil32(_306) > _306:
        mem[_291 + _306 + 160] = 0
    return memory
      from mem[64]
       len ceil32(_306) + _291 + -mem[64] + 160
}

function sub_4a7f5966(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
            mem[64] = (98 * ('cd', 4).length) + 192
            if not ('cd', 4).length:
                idx = 0
                s = 96
                while idx < ('cd', 4).length:
                    require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                    require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                    _257 = mem[64]
                    mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call this.address.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _257 + -mem[64] - 4]
                    if not return_data.size:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(ext_call.success)
                        require idx < mem[96]
                        if ext_call.success:
                            require mem[96] >= 64
                            require mem[128] == mem[140 len 20]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[160]
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[140 len 20]
                        idx = idx + 1
                        s = 96
                        continue 
                    _289 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_289] = return_data.size
                    mem[_289 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(ext_call.success)
                    require idx < mem[96]
                    if ext_call.success:
                        require return_data.size >= 64
                        _377 = mem[_289 + 32]
                        require mem[_289 + 32] == mem[_289 + 44 len 20]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[_289 + 64]
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(_377)
                    idx = idx + 1
                    s = _289
                    continue 
                _224 = mem[64]
                mem[mem[64]] = 96
                _232 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _232:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _232) + 128
                _440 = mem[(32 * ('cd', 4).length) + 128]
                mem[_224 + (32 * _232) + 128] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = _224 + (32 * _232) + 160
                t = (32 * ('cd', 4).length) + 160
                while idx < _440:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_224 + 64] = (32 * _232) + (32 * _440) + 160
                _496 = mem[(64 * ('cd', 4).length) + 160]
                mem[_224 + (32 * _232) + (32 * _440) + 160] = mem[(64 * ('cd', 4).length) + 160]
                mem[_224 + (32 * _232) + (32 * _440) + 192 len 32 * _496] = mem[(64 * ('cd', 4).length) + 192 len 32 * _496]
                return memory
                  from mem[64]
                   len _224 + (32 * _232) + (32 * _440) + (32 * _496) + -mem[64] + 192
            mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            s = 96
            while idx < ('cd', 4).length:
                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call this.address with:
                     gas gas_remaining wei
                    args call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(ext_call.success)
                    require idx < mem[96]
                    if ext_call.success:
                        require mem[96] >= 64
                        require mem[128] == mem[140 len 20]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[160]
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[140 len 20]
                    idx = idx + 1
                    s = 96
                    continue 
                _291 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_291] = return_data.size
                mem[_291 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < mem[96]
                mem[(32 * idx) + 128] = bool(ext_call.success)
                require idx < mem[96]
                if ext_call.success:
                    require return_data.size >= 64
                    _379 = mem[_291 + 32]
                    require mem[_291 + 32] == mem[_291 + 44 len 20]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[_291 + 64]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(_379)
                idx = idx + 1
                s = _291
                continue 
            _225 = mem[64]
            mem[mem[64]] = 96
            _233 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _233:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_225 + 32] = (32 * _233) + 128
            _442 = mem[(32 * ('cd', 4).length) + 128]
            mem[_225 + (32 * _233) + 128] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = _225 + (32 * _233) + 160
            t = (32 * ('cd', 4).length) + 160
            while idx < _442:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_225 + 64] = (32 * _233) + (32 * _442) + 160
            _497 = mem[(64 * ('cd', 4).length) + 160]
            mem[_225 + (32 * _233) + (32 * _442) + 160] = mem[(64 * ('cd', 4).length) + 160]
            mem[_225 + (32 * _233) + (32 * _442) + 192 len 32 * _497] = mem[(64 * ('cd', 4).length) + 192 len 32 * _497]
            return memory
              from mem[64]
               len _225 + (32 * _233) + (32 * _442) + (32 * _497) + -mem[64] + 192
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        mem[64] = (98 * ('cd', 4).length) + 192
        if not ('cd', 4).length:
            idx = 0
            s = 96
            while idx < ('cd', 4).length:
                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call this.address with:
                     gas gas_remaining wei
                    args call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(ext_call.success)
                    require idx < mem[96]
                    if ext_call.success:
                        require mem[96] >= 64
                        require mem[128] == mem[140 len 20]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[160]
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[140 len 20]
                    idx = idx + 1
                    s = 96
                    continue 
                _293 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_293] = return_data.size
                mem[_293 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < mem[96]
                mem[(32 * idx) + 128] = bool(ext_call.success)
                require idx < mem[96]
                if ext_call.success:
                    require return_data.size >= 64
                    _381 = mem[_293 + 32]
                    require mem[_293 + 32] == mem[_293 + 44 len 20]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[_293 + 64]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(_381)
                idx = idx + 1
                s = _293
                continue 
            _226 = mem[64]
            mem[mem[64]] = 96
            _234 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _234:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _234) + 128
            _444 = mem[(32 * ('cd', 4).length) + 128]
            mem[_226 + (32 * _234) + 128] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = _226 + (32 * _234) + 160
            t = (32 * ('cd', 4).length) + 160
            while idx < _444:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_226 + 64] = (32 * _234) + (32 * _444) + 160
            _498 = mem[(64 * ('cd', 4).length) + 160]
            mem[_226 + (32 * _234) + (32 * _444) + 160] = mem[(64 * ('cd', 4).length) + 160]
            mem[_226 + (32 * _234) + (32 * _444) + 192 len 32 * _498] = mem[(64 * ('cd', 4).length) + 192 len 32 * _498]
            return memory
              from mem[64]
               len _226 + (32 * _234) + (32 * _444) + (32 * _498) + -mem[64] + 192
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 96
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call this.address with:
                 gas gas_remaining wei
                args call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                require idx < mem[96]
                mem[(32 * idx) + 128] = bool(ext_call.success)
                require idx < mem[96]
                if ext_call.success:
                    require mem[96] >= 64
                    require mem[128] == mem[140 len 20]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[160]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[140 len 20]
                idx = idx + 1
                s = 96
                continue 
            _295 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_295] = return_data.size
            mem[_295 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require idx < mem[96]
            mem[(32 * idx) + 128] = bool(ext_call.success)
            require idx < mem[96]
            if ext_call.success:
                require return_data.size >= 64
                _383 = mem[_295 + 32]
                require mem[_295 + 32] == mem[_295 + 44 len 20]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[_295 + 64]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(_383)
            idx = idx + 1
            s = _295
            continue 
        _227 = mem[64]
        mem[mem[64]] = 96
        _235 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _235:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _235) + 128
        _446 = mem[(32 * ('cd', 4).length) + 128]
        mem[_227 + (32 * _235) + 128] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = _227 + (32 * _235) + 160
        t = (32 * ('cd', 4).length) + 160
        while idx < _446:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_227 + 64] = (32 * _235) + (32 * _446) + 160
        _499 = mem[(64 * ('cd', 4).length) + 160]
        mem[_227 + (32 * _235) + (32 * _446) + 160] = mem[(64 * ('cd', 4).length) + 160]
        mem[_227 + (32 * _235) + (32 * _446) + 192 len 32 * _499] = mem[(64 * ('cd', 4).length) + 192 len 32 * _499]
        return memory
          from mem[64]
           len _227 + (32 * _235) + (32 * _446) + (32 * _499) + -mem[64] + 192
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        mem[64] = (98 * ('cd', 4).length) + 192
        if not ('cd', 4).length:
            idx = 0
            s = 96
            while idx < ('cd', 4).length:
                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call this.address with:
                     gas gas_remaining wei
                    args call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(ext_call.success)
                    require idx < mem[96]
                    if ext_call.success:
                        require mem[96] >= 64
                        require mem[128] == mem[140 len 20]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[160]
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[140 len 20]
                    idx = idx + 1
                    s = 96
                    continue 
                _297 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_297] = return_data.size
                mem[_297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < mem[96]
                mem[(32 * idx) + 128] = bool(ext_call.success)
                require idx < mem[96]
                if ext_call.success:
                    require return_data.size >= 64
                    _385 = mem[_297 + 32]
                    require mem[_297 + 32] == mem[_297 + 44 len 20]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[_297 + 64]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(_385)
                idx = idx + 1
                s = _297
                continue 
            _228 = mem[64]
            mem[mem[64]] = 96
            _236 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _236:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_228 + 32] = (32 * _236) + 128
            _448 = mem[(32 * ('cd', 4).length) + 128]
            mem[_228 + (32 * _236) + 128] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = _228 + (32 * _236) + 160
            t = (32 * ('cd', 4).length) + 160
            while idx < _448:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_228 + 64] = (32 * _236) + (32 * _448) + 160
            _500 = mem[(64 * ('cd', 4).length) + 160]
            mem[_228 + (32 * _236) + (32 * _448) + 160] = mem[(64 * ('cd', 4).length) + 160]
            mem[_228 + (32 * _236) + (32 * _448) + 192 len 32 * _500] = mem[(64 * ('cd', 4).length) + 192 len 32 * _500]
            return memory
              from mem[64]
               len _228 + (32 * _236) + (32 * _448) + (32 * _500) + -mem[64] + 192
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 96
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call this.address with:
                 gas gas_remaining wei
                args call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                require idx < mem[96]
                mem[(32 * idx) + 128] = bool(ext_call.success)
                require idx < mem[96]
                if ext_call.success:
                    require mem[96] >= 64
                    require mem[128] == mem[140 len 20]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[160]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[140 len 20]
                idx = idx + 1
                s = 96
                continue 
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_299] = return_data.size
            mem[_299 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require idx < mem[96]
            mem[(32 * idx) + 128] = bool(ext_call.success)
            require idx < mem[96]
            if ext_call.success:
                require return_data.size >= 64
                _387 = mem[_299 + 32]
                require mem[_299 + 32] == mem[_299 + 44 len 20]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[_299 + 64]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(_387)
            idx = idx + 1
            s = _299
            continue 
        _229 = mem[64]
        mem[mem[64]] = 96
        _237 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _237:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _237) + 128
        _450 = mem[(32 * ('cd', 4).length) + 128]
        mem[_229 + (32 * _237) + 128] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = _229 + (32 * _237) + 160
        t = (32 * ('cd', 4).length) + 160
        while idx < _450:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_229 + 64] = (32 * _237) + (32 * _450) + 160
        _501 = mem[(64 * ('cd', 4).length) + 160]
        mem[_229 + (32 * _237) + (32 * _450) + 160] = mem[(64 * ('cd', 4).length) + 160]
        mem[_229 + (32 * _237) + (32 * _450) + 192 len 32 * _501] = mem[(64 * ('cd', 4).length) + 192 len 32 * _501]
        return memory
          from mem[64]
           len _229 + (32 * _237) + (32 * _450) + (32 * _501) + -mem[64] + 192
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
    mem[64] = (98 * ('cd', 4).length) + 192
    if not ('cd', 4).length:
        idx = 0
        s = 96
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call this.address with:
                 gas gas_remaining wei
                args call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                require idx < mem[96]
                mem[(32 * idx) + 128] = bool(ext_call.success)
                require idx < mem[96]
                if ext_call.success:
                    require mem[96] >= 64
                    require mem[128] == mem[140 len 20]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[160]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[140 len 20]
                idx = idx + 1
                s = 96
                continue 
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_301] = return_data.size
            mem[_301 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require idx < mem[96]
            mem[(32 * idx) + 128] = bool(ext_call.success)
            require idx < mem[96]
            if ext_call.success:
                require return_data.size >= 64
                _389 = mem[_301 + 32]
                require mem[_301 + 32] == mem[_301 + 44 len 20]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[_301 + 64]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(_389)
            idx = idx + 1
            s = _301
            continue 
        _230 = mem[64]
        mem[mem[64]] = 96
        _238 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _238:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_230 + 32] = (32 * _238) + 128
        _452 = mem[(32 * ('cd', 4).length) + 128]
        mem[_230 + (32 * _238) + 128] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = _230 + (32 * _238) + 160
        t = (32 * ('cd', 4).length) + 160
        while idx < _452:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_230 + 64] = (32 * _238) + (32 * _452) + 160
        _502 = mem[(64 * ('cd', 4).length) + 160]
        mem[_230 + (32 * _238) + (32 * _452) + 160] = mem[(64 * ('cd', 4).length) + 160]
        mem[_230 + (32 * _238) + (32 * _452) + 192 len 32 * _502] = mem[(64 * ('cd', 4).length) + 192 len 32 * _502]
        return memory
          from mem[64]
           len _230 + (32 * _238) + (32 * _452) + (32 * _502) + -mem[64] + 192
    mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    s = 96
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        _271 = mem[64]
        mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call this.address.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _271 + -mem[64] - 4]
        if not return_data.size:
            require idx < mem[96]
            mem[(32 * idx) + 128] = bool(ext_call.success)
            require idx < mem[96]
            if ext_call.success:
                require mem[96] >= 64
                require mem[128] == mem[140 len 20]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[160]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[140 len 20]
            idx = idx + 1
            s = 96
            continue 
        _303 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_303] = return_data.size
        mem[_303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require idx < mem[96]
        mem[(32 * idx) + 128] = bool(ext_call.success)
        require idx < mem[96]
        if ext_call.success:
            require return_data.size >= 64
            _391 = mem[_303 + 32]
            require mem[_303 + 32] == mem[_303 + 44 len 20]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require idx < mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = mem[_303 + 64]
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(_391)
        idx = idx + 1
        s = _303
        continue 
    _231 = mem[64]
    mem[mem[64]] = 96
    _239 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _239:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _239) + 128
    _454 = mem[(32 * ('cd', 4).length) + 128]
    mem[_231 + (32 * _239) + 128] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = _231 + (32 * _239) + 160
    t = (32 * ('cd', 4).length) + 160
    while idx < _454:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_231 + 64] = (32 * _239) + (32 * _454) + 160
    _503 = mem[(64 * ('cd', 4).length) + 160]
    mem[_231 + (32 * _239) + (32 * _454) + 160] = mem[(64 * ('cd', 4).length) + 160]
    mem[_231 + (32 * _239) + (32 * _454) + 192 len 32 * _503] = mem[(64 * ('cd', 4).length) + 192 len 32 * _503]
    return memory
      from mem[64]
       len _231 + (32 * _239) + (32 * _454) + (32 * _503) + -mem[64] + 192
}



}
