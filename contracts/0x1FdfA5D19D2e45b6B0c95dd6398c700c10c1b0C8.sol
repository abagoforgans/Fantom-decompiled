contract main {




// =====================  Runtime code  =====================


#
#  - sub_4013b70f(?)
#
address stor0;
address stor1;

function bye() payable {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x65546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_d44d9bc1(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x65546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_9eba4885(?) payable {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x65546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] <= 4294967296
    require cd[(arg4 + 36)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= 4294967296 and cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]] = call.data[arg4 + cd[(arg4 + 36)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    require cd[(arg4 + 132)] <= 4294967296
    require cd[(arg4 + 132)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0
    require 0 < cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
    _11 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[140 len 20]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _11
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 204 len 20])
    call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 204 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[140 len 20], _11
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)] - 1:
        require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]:
            _38 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
            _42 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _46 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = _42
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = address(_46)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = 128
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 0
            require ext_code.size(address(_38))
            call address(_38).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _42, 0, address(_46), 128, 0
        else:
            _40 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
            _44 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _49 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = 0
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _44
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = address(_49)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = 128
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 0
            require ext_code.size(address(_40))
            call address(_40).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _44, address(_49), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function wakaSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] <= 4294967296
    require cd[(arg4 + 36)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= 4294967296 and cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]] = call.data[arg4 + cd[(arg4 + 36)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    require cd[(arg4 + 132)] <= 4294967296
    require cd[(arg4 + 132)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0
    require 0 < cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
    _11 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[140 len 20]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _11
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 204 len 20])
    call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 204 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[140 len 20], _11
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)] - 1:
        require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]:
            _38 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
            _42 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _46 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = _42
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = address(_46)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = 128
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 0
            require ext_code.size(address(_38))
            call address(_38).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _42, 0, address(_46), 128, 0
        else:
            _40 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
            _44 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _49 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = 0
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _44
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = address(_49)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = 128
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 0
            require ext_code.size(address(_40))
            call address(_40).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _44, address(_49), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function ThugswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] <= 4294967296
    require cd[(arg4 + 36)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= 4294967296 and cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]] = call.data[arg4 + cd[(arg4 + 36)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    require cd[(arg4 + 132)] <= 4294967296
    require cd[(arg4 + 132)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0
    require 0 < cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
    _11 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[140 len 20]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _11
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 204 len 20])
    call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 204 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[140 len 20], _11
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)] - 1:
        require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]:
            _38 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
            _42 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _46 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = _42
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = address(_46)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = 128
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 0
            require ext_code.size(address(_38))
            call address(_38).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _42, 0, address(_46), 128, 0
        else:
            _40 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
            _44 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _49 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = 0
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _44
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = address(_49)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = 128
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 0
            require ext_code.size(address(_40))
            call address(_40).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _44, address(_49), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] <= 4294967296
    require cd[(arg4 + 36)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= 4294967296 and cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]] = call.data[arg4 + cd[(arg4 + 36)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    require cd[(arg4 + 132)] <= 4294967296
    require cd[(arg4 + 132)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0
    require 0 < cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
    _11 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = mem[140 len 20]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _11
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 204 len 20])
    call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 204 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[140 len 20], _11
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)] - 1:
        require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]:
            _38 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
            _42 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _46 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = _42
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = 0
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = address(_46)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = 128
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 0
            require ext_code.size(address(_38))
            call address(_38).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _42, 0, address(_46), 128, 0
        else:
            _40 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
            _44 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _49 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 228] = 0
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 260] = _44
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 292] = address(_49)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = 128
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = 0
            require ext_code.size(address(_40))
            call address(_40).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _44, address(_49), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_3aa99232(?) payable {
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 128
    require ('cd', 100)[0] <= 4294967296
    require ('cd', 100)[0] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[0] + 36)] <= 4294967296 and ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[128 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]] = call.data[cd[100] + ('cd', 100)[0] + 68 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]]
    require ('cd', 100)[1] <= 4294967296
    require ('cd', 100)[1] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[1] + 36)] <= 4294967296 and ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 128] = cd[(cd[100] + ('cd', 100)[1] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]] = call.data[cd[100] + ('cd', 100)[1] + 68 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]]
    require ('cd', 100)[2] <= 4294967296
    require ('cd', 100)[2] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[2] + 36)] <= 4294967296 and ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 160] = cd[(cd[100] + ('cd', 100)[2] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]] = call.data[cd[100] + ('cd', 100)[2] + 68 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]]
    require ('cd', 100)[3] <= 4294967296
    require ('cd', 100)[3] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[3] + 36)] <= 4294967296 and ('cd', 100)[3] + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 192] = cd[(cd[100] + ('cd', 100)[3] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224 len 32 * cd[(cd[100] + ('cd', 100)[3] + 36)]] = call.data[cd[100] + ('cd', 100)[3] + 68 len 32 * cd[(cd[100] + ('cd', 100)[3] + 36)]]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = 0
    require 0 < cd[(cd[100] + ('cd', 100)[2] + 36)]
    require 0 < cd[(cd[100] + ('cd', 100)[0] + 36)]
    require 0 < cd[(cd[100] + ('cd', 100)[3] + 36)]
    _11 = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 228] = mem[140 len 20]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 260] = _11
    require ext_code.size(mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 204 len 20])
    call mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 204 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[140 len 20], _11
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(cd[100] + ('cd', 100)[0] + 36)] - 1:
        require idx < cd[(cd[100] + ('cd', 100)[1] + 36)]
        require idx < cd[(cd[100] + ('cd', 100)[0] + 36)]
        if not mem[(32 * idx) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]:
            _38 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[3] + 36)]
            _42 = mem[(32 * idx + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _46 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 228] = _42
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 260] = 0
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 292] = address(_46)
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 324] = 128
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 356] = 0
            require ext_code.size(address(_38))
            call address(_38).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _42, 0, address(_46), 128, 0
        else:
            _40 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[3] + 36)]
            _44 = mem[(32 * idx + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _49 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 228] = 0
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 260] = _44
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 292] = address(_49)
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 324] = 128
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 356] = 0
            require ext_code.size(address(_40))
            call address(_40).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _44, address(_49), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_ace1c26f(?) payable {
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 128
    require ('cd', 100)[0] <= 4294967296
    require ('cd', 100)[0] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[0] + 36)] <= 4294967296 and ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[128 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]] = call.data[cd[100] + ('cd', 100)[0] + 68 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]]
    require ('cd', 100)[1] <= 4294967296
    require ('cd', 100)[1] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[1] + 36)] <= 4294967296 and ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 128] = cd[(cd[100] + ('cd', 100)[1] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]] = call.data[cd[100] + ('cd', 100)[1] + 68 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]]
    require ('cd', 100)[2] <= 4294967296
    require ('cd', 100)[2] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[2] + 36)] <= 4294967296 and ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 160] = cd[(cd[100] + ('cd', 100)[2] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]] = call.data[cd[100] + ('cd', 100)[2] + 68 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]]
    require ('cd', 100)[3] <= 4294967296
    require ('cd', 100)[3] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[3] + 36)] <= 4294967296 and ('cd', 100)[3] + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 192] = cd[(cd[100] + ('cd', 100)[3] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224 len 32 * cd[(cd[100] + ('cd', 100)[3] + 36)]] = call.data[cd[100] + ('cd', 100)[3] + 68 len 32 * cd[(cd[100] + ('cd', 100)[3] + 36)]]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = 0
    require 0 < cd[(cd[100] + ('cd', 100)[2] + 36)]
    require 0 < cd[(cd[100] + ('cd', 100)[0] + 36)]
    require 0 < cd[(cd[100] + ('cd', 100)[3] + 36)]
    _11 = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 228] = mem[140 len 20]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 260] = _11
    require ext_code.size(mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 204 len 20])
    call mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 204 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[140 len 20], _11
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(cd[100] + ('cd', 100)[0] + 36)] - 1:
        require idx < cd[(cd[100] + ('cd', 100)[1] + 36)]
        require idx < cd[(cd[100] + ('cd', 100)[0] + 36)]
        if not mem[(32 * idx) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]:
            _38 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[3] + 36)]
            _42 = mem[(32 * idx + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _46 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 228] = _42
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 260] = 0
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 292] = address(_46)
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 324] = 128
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 356] = 0
            require ext_code.size(address(_38))
            call address(_38).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _42, 0, address(_46), 128, 0
        else:
            _40 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[3] + 36)]
            _44 = mem[(32 * idx + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _49 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 228] = 0
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 260] = _44
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 292] = address(_49)
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 324] = 128
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 356] = 0
            require ext_code.size(address(_40))
            call address(_40).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _44, address(_49), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_cdcaf6a0(?) payable {
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 128
    require ('cd', 100)[0] <= 4294967296
    require ('cd', 100)[0] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[0] + 36)] <= 4294967296 and ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[128 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]] = call.data[cd[100] + ('cd', 100)[0] + 68 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]]
    require ('cd', 100)[1] <= 4294967296
    require ('cd', 100)[1] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[1] + 36)] <= 4294967296 and ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 128] = cd[(cd[100] + ('cd', 100)[1] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]] = call.data[cd[100] + ('cd', 100)[1] + 68 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]]
    require ('cd', 100)[2] <= 4294967296
    require ('cd', 100)[2] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[2] + 36)] <= 4294967296 and ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 160] = cd[(cd[100] + ('cd', 100)[2] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]] = call.data[cd[100] + ('cd', 100)[2] + 68 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]]
    require ('cd', 100)[3] <= 4294967296
    require ('cd', 100)[3] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[3] + 36)] <= 4294967296 and ('cd', 100)[3] + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 192] = cd[(cd[100] + ('cd', 100)[3] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224 len 32 * cd[(cd[100] + ('cd', 100)[3] + 36)]] = call.data[cd[100] + ('cd', 100)[3] + 68 len 32 * cd[(cd[100] + ('cd', 100)[3] + 36)]]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = 0
    require 0 < cd[(cd[100] + ('cd', 100)[2] + 36)]
    require 0 < cd[(cd[100] + ('cd', 100)[0] + 36)]
    require 0 < cd[(cd[100] + ('cd', 100)[3] + 36)]
    _11 = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 228] = mem[140 len 20]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 260] = _11
    require ext_code.size(mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 204 len 20])
    call mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 204 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[140 len 20], _11
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(cd[100] + ('cd', 100)[0] + 36)] - 1:
        require idx < cd[(cd[100] + ('cd', 100)[1] + 36)]
        require idx < cd[(cd[100] + ('cd', 100)[0] + 36)]
        if not mem[(32 * idx) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]:
            _38 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[3] + 36)]
            _42 = mem[(32 * idx + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _46 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 228] = _42
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 260] = 0
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 292] = address(_46)
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 324] = 128
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 356] = 0
            require ext_code.size(address(_38))
            call address(_38).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _42, 0, address(_46), 128, 0
        else:
            _40 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[3] + 36)]
            _44 = mem[(32 * idx + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224]
            require idx + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _49 = mem[(32 * idx + 1) + 128]
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 228] = 0
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 260] = _44
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 292] = address(_49)
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 324] = 128
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[3] + 36)]) + 356] = 0
            require ext_code.size(address(_40))
            call address(_40).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _44, address(_49), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
