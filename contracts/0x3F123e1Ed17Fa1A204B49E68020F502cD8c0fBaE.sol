contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function bye() {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_03f61bde(?) payable {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    require ext_code.size(stor1)
    call stor1.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_d44d9bc1(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
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
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_9eba4885(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
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

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 160
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
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = 0
    if cd[(arg4 + 132)] >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _10 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = this.address
            require ext_code.size(address(_10))
            staticcall address(_10).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _22 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _26 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
            staticcall mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 256] = cd[(arg4 + 132)] + 1
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 288] = address(_22)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 320] = address(_26)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 352] = cd[(arg4 + 164)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 384] = ext_call.return_data[0]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] = 192
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 416] = 15
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 448] = 'frictionless ? '
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = 256
            if ext_call.return_data[0] < cd[(arg4 + 164)]:
                revert with 0, 
                            32,
                            256,
                            192,
                            cd[(arg4 + 132)] + 1,
                            address(_22),
                            address(_26),
                            cd[(arg4 + 164)],
                            ext_call.return_data[0],
                            15,
                            'frictionless ? '
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
            call mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[(32 * cd[(arg4 + 132)] + 1) + 128]), cd[(arg4 + 164)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    _8 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    _13 = mem[(32 * cd[(arg4 + 132)]) + 128]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = mem[(32 * cd[(arg4 + 132)]) + 140 len 20]
    require ext_code.size(address(_8))
    staticcall address(_8).0x70a08231 with:
            gas gas_remaining wei
           args address(_13)
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    _24 = mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    _28 = mem[(32 * cd[(arg4 + 132)]) + 128]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = mem[(32 * cd[(arg4 + 132)]) + 140 len 20]
    require ext_code.size(address(_24))
    staticcall address(_24).0x70a08231 with:
            gas gas_remaining wei
           args address(_28)
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= cd[(arg4 + 164)]:
        revert with 0, 'pair trop legere'
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 100)] + 36)]
    _47 = mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
    require (ext_call.return_data[0] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]) - (cd[(arg4 + 164)] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192])
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 320] = cd[(arg4 + 132)] - 1
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 352] = (10000 * ext_call.return_data[0] * cd[(arg4 + 164)] / (ext_call.return_data[0] * _47) - (cd[(arg4 + 164)] * _47)) + 1
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] = 160
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 384] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 416 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 256] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192
    mem[(64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 416] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 448 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 288] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 224
    mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 448] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 480 len floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)])]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    _576 = mem[(32 * cd[(arg4 + 132)]) + 128]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0xdfe168100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(_576))
    staticcall address(_576).token0() with:
            gas gas_remaining wei
           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len 127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    if mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20] != ext_call.return_data[12 len 20]:
        _585 = mem[(32 * cd[(arg4 + 132)]) + 128]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = cd[(arg4 + 164)]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 0
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
        if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
            require ext_code.size(address(_585))
            call address(_585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _751 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_751))
            staticcall address(_751).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _773 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _781 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _789 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_789))
            staticcall address(_789).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_773)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_781)
        else:
            mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
            require ext_code.size(address(_585))
            call address(_585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _759 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_759))
            staticcall address(_759).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _783 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _792 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _799 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_799))
            staticcall address(_799).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_783)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_792)
    else:
        _589 = mem[(32 * cd[(arg4 + 132)]) + 128]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 0
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
        if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
            require ext_code.size(address(_589))
            call address(_589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _755 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_755))
            staticcall address(_755).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _777 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _785 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _794 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_794))
            staticcall address(_794).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_777)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_785)
        else:
            mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
            require ext_code.size(address(_589))
            call address(_589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _762 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_762))
            staticcall address(_762).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _787 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _797 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _802 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_802))
            staticcall address(_802).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_787)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_797)
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 640] = cd[(arg4 + 164)]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 672] = ext_call.return_data[0]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 512] = 192
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 704] = 15
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 736] = 'frictionless ? '
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
    if ext_call.return_data[0] >= cd[(arg4 + 164)]:
        require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
        call mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[(32 * cd[(arg4 + 132)] + 1) + 128]), cd[(arg4 + 164)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 772] = 32
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 804] = (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 836 len ceil32(127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 8] = mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 512 len ceil32(127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 8]
    if not (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
        revert with memory
          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 768
           len (255 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 324
    mem[floor32((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 836] = mem[floor32((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 868 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
    revert with memory
      from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 768
       len floor32((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (129 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 100
}

function ThugswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 160
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
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = 0
    if cd[(arg4 + 132)] >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _10 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = this.address
            require ext_code.size(address(_10))
            staticcall address(_10).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _22 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _26 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
            staticcall mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 256] = cd[(arg4 + 132)] + 1
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 288] = address(_22)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 320] = address(_26)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 352] = cd[(arg4 + 164)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 384] = ext_call.return_data[0]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] = 192
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 416] = 15
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 448] = 'frictionless ? '
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = 256
            if ext_call.return_data[0] < cd[(arg4 + 164)]:
                revert with 0, 
                            32,
                            256,
                            192,
                            cd[(arg4 + 132)] + 1,
                            address(_22),
                            address(_26),
                            cd[(arg4 + 164)],
                            ext_call.return_data[0],
                            15,
                            'frictionless ? '
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
            call mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[(32 * cd[(arg4 + 132)] + 1) + 128]), cd[(arg4 + 164)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    _8 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    _13 = mem[(32 * cd[(arg4 + 132)]) + 128]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = mem[(32 * cd[(arg4 + 132)]) + 140 len 20]
    require ext_code.size(address(_8))
    staticcall address(_8).0x70a08231 with:
            gas gas_remaining wei
           args address(_13)
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    _24 = mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    _28 = mem[(32 * cd[(arg4 + 132)]) + 128]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = mem[(32 * cd[(arg4 + 132)]) + 140 len 20]
    require ext_code.size(address(_24))
    staticcall address(_24).0x70a08231 with:
            gas gas_remaining wei
           args address(_28)
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= cd[(arg4 + 164)]:
        revert with 0, 'pair trop legere'
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 100)] + 36)]
    _47 = mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
    require (ext_call.return_data[0] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]) - (cd[(arg4 + 164)] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192])
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 320] = cd[(arg4 + 132)] - 1
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 352] = (10000 * ext_call.return_data[0] * cd[(arg4 + 164)] / (ext_call.return_data[0] * _47) - (cd[(arg4 + 164)] * _47)) + 1
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] = 160
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 384] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 416 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 256] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192
    mem[(64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 416] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 448 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 288] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 224
    mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 448] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 480 len floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)])]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    _576 = mem[(32 * cd[(arg4 + 132)]) + 128]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0xdfe168100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(_576))
    staticcall address(_576).token0() with:
            gas gas_remaining wei
           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len 127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    if mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20] != ext_call.return_data[12 len 20]:
        _585 = mem[(32 * cd[(arg4 + 132)]) + 128]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = cd[(arg4 + 164)]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 0
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
        if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
            require ext_code.size(address(_585))
            call address(_585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _751 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_751))
            staticcall address(_751).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _773 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _781 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _789 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_789))
            staticcall address(_789).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_773)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_781)
        else:
            mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
            require ext_code.size(address(_585))
            call address(_585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _759 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_759))
            staticcall address(_759).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _783 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _792 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _799 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_799))
            staticcall address(_799).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_783)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_792)
    else:
        _589 = mem[(32 * cd[(arg4 + 132)]) + 128]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 0
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
        if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
            require ext_code.size(address(_589))
            call address(_589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _755 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_755))
            staticcall address(_755).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _777 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _785 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _794 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_794))
            staticcall address(_794).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_777)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_785)
        else:
            mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
            require ext_code.size(address(_589))
            call address(_589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _762 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_762))
            staticcall address(_762).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _787 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _797 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _802 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_802))
            staticcall address(_802).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_787)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_797)
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 640] = cd[(arg4 + 164)]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 672] = ext_call.return_data[0]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 512] = 192
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 704] = 15
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 736] = 'frictionless ? '
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
    if ext_call.return_data[0] >= cd[(arg4 + 164)]:
        require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
        call mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[(32 * cd[(arg4 + 132)] + 1) + 128]), cd[(arg4 + 164)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 772] = 32
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 804] = (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 836 len ceil32(127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 8] = mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 512 len ceil32(127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 8]
    if not (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
        revert with memory
          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 768
           len (255 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 324
    mem[floor32((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 836] = mem[floor32((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 868 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
    revert with memory
      from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 768
       len floor32((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (129 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 100
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 160
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
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = 0
    if cd[(arg4 + 132)] >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _10 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = this.address
            require ext_code.size(address(_10))
            staticcall address(_10).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _22 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _26 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
            staticcall mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 256] = cd[(arg4 + 132)] + 1
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 288] = address(_22)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 320] = address(_26)
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 352] = cd[(arg4 + 164)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 384] = ext_call.return_data[0]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] = 192
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 416] = 15
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 448] = 'frictionless ? '
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = 256
            if ext_call.return_data[0] < cd[(arg4 + 164)]:
                revert with 0, 
                            32,
                            256,
                            192,
                            cd[(arg4 + 132)] + 1,
                            address(_22),
                            address(_26),
                            cd[(arg4 + 164)],
                            ext_call.return_data[0],
                            15,
                            'frictionless ? '
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
            call mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[(32 * cd[(arg4 + 132)] + 1) + 128]), cd[(arg4 + 164)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    _8 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    _13 = mem[(32 * cd[(arg4 + 132)]) + 128]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = mem[(32 * cd[(arg4 + 132)]) + 140 len 20]
    require ext_code.size(address(_8))
    staticcall address(_8).0x70a08231 with:
            gas gas_remaining wei
           args address(_13)
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    _24 = mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    _28 = mem[(32 * cd[(arg4 + 132)]) + 128]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = mem[(32 * cd[(arg4 + 132)]) + 140 len 20]
    require ext_code.size(address(_24))
    staticcall address(_24).0x70a08231 with:
            gas gas_remaining wei
           args address(_28)
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= cd[(arg4 + 164)]:
        revert with 0, 'pair trop legere'
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 100)] + 36)]
    _47 = mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
    require (ext_call.return_data[0] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]) - (cd[(arg4 + 164)] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192])
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 320] = cd[(arg4 + 132)] - 1
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 352] = (10000 * ext_call.return_data[0] * cd[(arg4 + 164)] / (ext_call.return_data[0] * _47) - (cd[(arg4 + 164)] * _47)) + 1
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] = 160
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 384] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 416 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 256] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192
    mem[(64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 416] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 448 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 288] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 224
    mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 448] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 480 len floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)])]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    _576 = mem[(32 * cd[(arg4 + 132)]) + 128]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0xdfe168100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(_576))
    staticcall address(_576).token0() with:
            gas gas_remaining wei
           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len 127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    if mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20] != ext_call.return_data[12 len 20]:
        _585 = mem[(32 * cd[(arg4 + 132)]) + 128]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = cd[(arg4 + 164)]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 0
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
        if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
            require ext_code.size(address(_585))
            call address(_585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _751 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_751))
            staticcall address(_751).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _773 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _781 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _789 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_789))
            staticcall address(_789).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_773)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_781)
        else:
            mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
            require ext_code.size(address(_585))
            call address(_585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _759 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_759))
            staticcall address(_759).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _783 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _792 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _799 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_799))
            staticcall address(_799).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_783)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_792)
    else:
        _589 = mem[(32 * cd[(arg4 + 132)]) + 128]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 0
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
        if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
            require ext_code.size(address(_589))
            call address(_589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _755 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_755))
            staticcall address(_755).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _777 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _785 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _794 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_794))
            staticcall address(_794).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_777)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_785)
        else:
            mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
            require ext_code.size(address(_589))
            call address(_589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _762 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_762))
            staticcall address(_762).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _787 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            _797 = mem[(32 * cd[(arg4 + 132)] + 1) + 128]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _802 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
            require ext_code.size(address(_802))
            staticcall address(_802).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 544] = cd[(arg4 + 132)] + 1
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 576] = address(_787)
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 608] = address(_797)
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 640] = cd[(arg4 + 164)]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 672] = ext_call.return_data[0]
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 512] = 192
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 704] = 15
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 736] = 'frictionless ? '
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
    if ext_call.return_data[0] >= cd[(arg4 + 164)]:
        require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
        call mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[(32 * cd[(arg4 + 132)] + 1) + 128]), cd[(arg4 + 164)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 772] = 32
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 804] = (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 836 len ceil32(127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 8] = mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 512 len ceil32(127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 8]
    if not (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
        revert with memory
          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 768
           len (255 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 324
    mem[floor32((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 836] = mem[floor32((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 868 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
    revert with memory
      from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 768
       len floor32((127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (129 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 100
}

function sub_3aa99232(?) {
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 160
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
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 192] = 0
    if ('cd', 100)[3] >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
        if ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]:
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _10 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 196] = this.address
            require ext_code.size(address(_10))
            staticcall address(_10).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _22 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _26 = mem[(32 * ('cd', 100)[3] + 1) + 128]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            require ext_code.size(mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 172 len 20])
            staticcall mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 172 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 256] = ('cd', 100)[3] + 1
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 288] = address(_22)
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 320] = address(_26)
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 352] = ('cd', 100)[4]
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 384] = ext_call.return_data[0]
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224] = 192
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 416] = 15
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 448] = 'frictionless ? '
            mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 192] = 256
            if ext_call.return_data[0] < ('cd', 100)[4]:
                revert with 0, 
                            32,
                            256,
                            192,
                            ('cd', 100)[3] + 1,
                            address(_22),
                            address(_26),
                            ('cd', 100)[4],
                            ext_call.return_data[0],
                            15,
                            'frictionless ? '
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            require ext_code.size(mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 172 len 20])
            call mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 172 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[(32 * ('cd', 100)[3] + 1) + 128]), ('cd', 100)[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
    _8 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
    require ('cd', 100)[3] < cd[(cd[100] + ('cd', 100)[0] + 36)]
    _13 = mem[(32 * ('cd', 100)[3]) + 128]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 196] = mem[(32 * ('cd', 100)[3]) + 140 len 20]
    require ext_code.size(address(_8))
    staticcall address(_8).0x70a08231 with:
            gas gas_remaining wei
           args address(_13)
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 100)[3] < cd[(cd[100] + ('cd', 100)[1] + 36)]
    _24 = mem[(32 * ('cd', 100)[3]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
    require ('cd', 100)[3] < cd[(cd[100] + ('cd', 100)[0] + 36)]
    _28 = mem[(32 * ('cd', 100)[3]) + 128]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 196] = mem[(32 * ('cd', 100)[3]) + 140 len 20]
    require ext_code.size(address(_24))
    staticcall address(_24).0x70a08231 with:
            gas gas_remaining wei
           args address(_28)
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ('cd', 100)[4]:
        revert with 0, 'pair trop legere'
    require ('cd', 100)[3] < cd[(cd[100] + ('cd', 100)[2] + 36)]
    _47 = mem[(32 * ('cd', 100)[3]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192]
    require (ext_call.return_data[0] * mem[(32 * ('cd', 100)[3]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192]) - (('cd', 100)[4] * mem[(32 * ('cd', 100)[3]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192])
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 320] = ('cd', 100)[3] - 1
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 352] = (10000 * ext_call.return_data[0] * ('cd', 100)[4] / (ext_call.return_data[0] * _47) - (('cd', 100)[4] * _47)) + 1
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224] = 160
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 384] = cd[(cd[100] + ('cd', 100)[0] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 416 len floor32(cd[(cd[100] + ('cd', 100)[0] + 36)])] = call.data[cd[100] + ('cd', 100)[0] + 68 len floor32(cd[(cd[100] + ('cd', 100)[0] + 36)])]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 256] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 192
    mem[(64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 416] = cd[(cd[100] + ('cd', 100)[1] + 36)]
    mem[(64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 448 len floor32(cd[(cd[100] + ('cd', 100)[1] + 36)])] = call.data[cd[100] + ('cd', 100)[1] + 68 len floor32(cd[(cd[100] + ('cd', 100)[1] + 36)])]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 288] = (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 224
    mem[(64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 448] = cd[(cd[100] + ('cd', 100)[2] + 36)]
    mem[(64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 480 len floor32(cd[(cd[100] + ('cd', 100)[2] + 36)])] = call.data[cd[100] + ('cd', 100)[2] + 68 len floor32(cd[(cd[100] + ('cd', 100)[2] + 36)])]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 192] = (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256
    require ('cd', 100)[3] < cd[(cd[100] + ('cd', 100)[0] + 36)]
    _576 = mem[(32 * ('cd', 100)[3]) + 128]
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = 0xdfe168100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(_576))
    staticcall address(_576).token0() with:
            gas gas_remaining wei
           args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len 127 * cd[(cd[100] + ('cd', 100)[0] + 36)]]
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 100)[3] < cd[(cd[100] + ('cd', 100)[1] + 36)]
    require ('cd', 100)[3] < cd[(cd[100] + ('cd', 100)[0] + 36)]
    if mem[(32 * ('cd', 100)[3]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 172 len 20] != ext_call.return_data[12 len 20]:
        _585 = mem[(32 * ('cd', 100)[3]) + 128]
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = ('cd', 100)[4]
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = 0
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 548] = this.address
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 580] = 128
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 612] = (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 644 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 31) + 8] = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 31) + 8]
        if not (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32:
            require ext_code.size(address(_585))
            call address(_585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (160 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 100)[3] + 1 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _751 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
            require ext_code.size(address(_751))
            staticcall address(_751).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _773 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _781 = mem[(32 * ('cd', 100)[3] + 1) + 128]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _789 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
            require ext_code.size(address(_789))
            staticcall address(_789).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 544] = ('cd', 100)[3] + 1
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 576] = address(_773)
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 608] = address(_781)
        else:
            mem[floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 644] = mem[floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + -((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32) + 676 len (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32]
            require ext_code.size(address(_585))
            call address(_585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 100)[3] + 1 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _759 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
            require ext_code.size(address(_759))
            staticcall address(_759).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _783 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _792 = mem[(32 * ('cd', 100)[3] + 1) + 128]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _799 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
            require ext_code.size(address(_799))
            staticcall address(_799).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 544] = ('cd', 100)[3] + 1
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 576] = address(_783)
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 608] = address(_792)
    else:
        _589 = mem[(32 * ('cd', 100)[3]) + 128]
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = 0
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = ('cd', 100)[4]
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 548] = this.address
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 580] = 128
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 612] = (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 644 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 31) + 8] = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 31) + 8]
        if not (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32:
            require ext_code.size(address(_589))
            call address(_589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (160 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 100)[3] + 1 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _755 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
            require ext_code.size(address(_755))
            staticcall address(_755).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _777 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _785 = mem[(32 * ('cd', 100)[3] + 1) + 128]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _794 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
            require ext_code.size(address(_794))
            staticcall address(_794).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 544] = ('cd', 100)[3] + 1
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 576] = address(_777)
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 608] = address(_785)
        else:
            mem[floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 644] = mem[floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + -((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32) + 676 len (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32]
            require ext_code.size(address(_589))
            call address(_589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 100)[3] + 1 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _762 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
            require ext_code.size(address(_762))
            staticcall address(_762).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _787 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            _797 = mem[(32 * ('cd', 100)[3] + 1) + 128]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            _802 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
            require ext_code.size(address(_802))
            staticcall address(_802).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 544] = ('cd', 100)[3] + 1
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 576] = address(_787)
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 608] = address(_797)
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 640] = ('cd', 100)[4]
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 672] = ext_call.return_data[0]
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 512] = 192
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 704] = 15
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 736] = 'frictionless ? '
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256
    if ext_call.return_data[0] >= ('cd', 100)[4]:
        require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
        require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
        require ext_code.size(mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 172 len 20])
        call mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 172 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[(32 * ('cd', 100)[3] + 1) + 128]), ('cd', 100)[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 772] = 32
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 804] = (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256
    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 836 len ceil32(127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 8] = mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 512 len ceil32(127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 8]
    if not (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32:
        revert with memory
          from (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 768
           len (255 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 324
    mem[floor32((127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 836] = mem[floor32((127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + -((127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32) + 868 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32]
    revert with memory
      from (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 768
       len floor32((127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (129 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 100
}

function sub_68b5371d(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    else:
        mem[100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            mem[96] = arg1.length
            mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[(32 * arg1.length) + 128] = arg2.length
            mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
            if arg1.length - 1 >= arg1.length:
                if arg1.length >= arg1.length:
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'pas rentable !'
                        else:
                else:
                    require arg1.length < arg2.length
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = this.address
                    require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                    staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require arg1.length < arg2.length
                        require arg1.length < arg1.length
                        require arg1.length < arg2.length
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = this.address
                        require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                        staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = arg1.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288] = mem[(64 * arg1.length) + 172 len 20]
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 320] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 352] = arg4
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384] = ext_call.return_data[0]
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = 192
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 416] = 15
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448] = 'frictionless ? '
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 256
                            if ext_call.return_data[0] < arg4:
                                revert with 0, 
                                            32,
                                            256,
                                            192,
                                            arg1.length,
                                            mem[(64 * arg1.length) + 172 len 20],
                                            0,
                                            arg4,
                                            ext_call.return_data[0],
                                            15,
                                            'frictionless ? '
                            else:
                                require arg1.length < arg2.length
                                require arg1.length < arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 484] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 516] = arg4
                                require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                call mem[(64 * arg1.length) + 172 len 20].0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 0, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'pas rentable !'
                                        else:
            else:
                require arg1.length < arg2.length
                require arg1.length - 1 < arg1.length
                _21 = mem[(32 * arg1.length - 1) + 128]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = address(_21)
                require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args address(_21)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require arg1.length - 1 < arg2.length
                    _36 = mem[(32 * arg1.length - 1) + (32 * arg1.length) + 160]
                    require arg1.length - 1 < arg1.length
                    _40 = mem[(32 * arg1.length - 1) + 128]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = mem[(32 * arg1.length - 1) + 140 len 20]
                    require ext_code.size(address(_36))
                    staticcall address(_36).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_40)
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg4:
                            revert with 0, 'pair trop legere'
                        else:
                            require arg1.length - 1 < arg3.length
                            require (ext_call.return_data[0] * mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192]) - (arg4 * mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192])
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 320] = arg1.length - 2
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 352] = (10000 * ext_call.return_data[0] * arg4 / (ext_call.return_data[0] * mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192]) - (arg4 * mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192])) + 1
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = 160
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384] = arg1.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 416 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = (32 * arg1.length) + 192
                            mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 416] = arg2.length
                            mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288] = (32 * arg2.length) + (32 * arg1.length) + 224
                            mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 448] = arg3.length
                            mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 480 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256
                            require arg1.length - 1 < arg1.length
                            _738 = mem[(32 * arg1.length - 1) + 128]
                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_738))
                            staticcall address(_738).token0() with:
                                    gas gas_remaining wei
                                   args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len 127 * arg1.length]
                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require arg1.length - 1 < arg2.length
                                if mem[(32 * arg1.length - 1) + (32 * arg1.length) + 172 len 20] != ext_call.return_data[12 len 20]:
                                    require arg1.length - 1 < arg1.length
                                    _747 = mem[(32 * arg1.length - 1) + 128]
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = arg4
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 516] = 0
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 548] = this.address
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 580] = 128
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 612] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 644 len floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 31) + 8] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 31) + 8]
                                    if not (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 % 32:
                                        require ext_code.size(address(_747))
                                        call address(_747).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (32 * arg3.length) + (32 * arg2.length) + (160 * arg1.length) + 416]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if arg1.length >= arg1.length:
                                                mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                require ext_code.size(stor1)
                                                staticcall stor1.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                                    else:
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = 32
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 516] = 14
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 548] = 'pas rentable !'
                                                        revert with memory
                                                          from (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480
                                                           len (127 * arg1.length) + 100
                                            else:
                                                require arg1.length < arg2.length
                                                mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require arg1.length < arg2.length
                                                    require arg1.length < arg1.length
                                                    require arg1.length < arg2.length
                                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                    require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                    staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 544] = arg1.length
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 576] = mem[(64 * arg1.length) + 172 len 20]
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 608] = address(arg2.length)
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 640] = arg4
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 672] = ext_call.return_data[0]
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 512] = 192
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 704] = 15
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 736] = 'frictionless ? '
                                                        if ext_call.return_data[0] >= arg4:
                                                            require arg1.length < arg2.length
                                                            require arg1.length < arg1.length
                                                            require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                            call mem[(64 * arg1.length) + 172 len 20].0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args address(arg2.length), arg4
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_code.size(stor1)
                                                                staticcall stor1.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                        revert with 0, 'pas rentable !'
                                                                    else:
                                                        else:
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 772] = 32
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 804] = (127 * arg1.length) + 256
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836 len ceil32(127 * arg1.length) + 8] = mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 512 len ceil32(127 * arg1.length) + 8]
                                                            if not (127 * arg1.length) + 256 % 32:
                                                                revert with memory
                                                                  from (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 768
                                                                   len (255 * arg1.length) + 324
                                                            else:
                                                                mem[floor32((127 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836] = mem[floor32((127 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + -((127 * arg1.length) + 256 % 32) + 868 len (127 * arg1.length) + 256 % 32]
                                                                revert with 0, 
                                                                            32,
                                                                            (127 * arg1.length) + 256,
                                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836 len floor32((127 * arg1.length) + 256) + 32]
                                    else:
                                        mem[floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 644] = mem[floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + -((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 % 32) + 676 len (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 % 32]
                                        require ext_code.size(address(_747))
                                        call address(_747).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256) + (127 * arg1.length) + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if arg1.length >= arg1.length:
                                                mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                require ext_code.size(stor1)
                                                staticcall stor1.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                                    else:
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = 32
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 516] = 14
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 548] = 'pas rentable !'
                                                        revert with memory
                                                          from (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480
                                                           len (127 * arg1.length) + 100
                                            else:
                                                require arg1.length < arg2.length
                                                mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require arg1.length < arg2.length
                                                    require arg1.length < arg1.length
                                                    require arg1.length < arg2.length
                                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                    require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                    staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 544] = arg1.length
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 576] = mem[(64 * arg1.length) + 172 len 20]
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 608] = address(arg2.length)
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 640] = arg4
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 672] = ext_call.return_data[0]
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 512] = 192
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 704] = 15
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 736] = 'frictionless ? '
                                                        if ext_call.return_data[0] >= arg4:
                                                            require arg1.length < arg2.length
                                                            require arg1.length < arg1.length
                                                            require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                            call mem[(64 * arg1.length) + 172 len 20].0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args address(arg2.length), arg4
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_code.size(stor1)
                                                                staticcall stor1.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                        revert with 0, 'pas rentable !'
                                                                    else:
                                                        else:
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 772] = 32
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 804] = (127 * arg1.length) + 256
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836 len ceil32(127 * arg1.length) + 8] = mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 512 len ceil32(127 * arg1.length) + 8]
                                                            if not (127 * arg1.length) + 256 % 32:
                                                                revert with memory
                                                                  from (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 768
                                                                   len (255 * arg1.length) + 324
                                                            else:
                                                                mem[floor32((127 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836] = mem[floor32((127 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + -((127 * arg1.length) + 256 % 32) + 868 len (127 * arg1.length) + 256 % 32]
                                                                revert with 0, 
                                                                            32,
                                                                            (127 * arg1.length) + 256,
                                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836 len floor32((127 * arg1.length) + 256) + 32]
                                else:
                                    require arg1.length - 1 < arg1.length
                                    _751 = mem[(32 * arg1.length - 1) + 128]
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = 0
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 516] = arg4
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 548] = this.address
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 580] = 128
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 612] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256
                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 644 len floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 31) + 8] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 31) + 8]
                                    if not (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 % 32:
                                        require ext_code.size(address(_751))
                                        call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (32 * arg3.length) + (32 * arg2.length) + (160 * arg1.length) + 416]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if arg1.length >= arg1.length:
                                                mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                require ext_code.size(stor1)
                                                staticcall stor1.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                                    else:
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = 32
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 516] = 14
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 548] = 'pas rentable !'
                                                        revert with memory
                                                          from (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480
                                                           len (127 * arg1.length) + 100
                                            else:
                                                require arg1.length < arg2.length
                                                mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require arg1.length < arg2.length
                                                    require arg1.length < arg1.length
                                                    require arg1.length < arg2.length
                                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                    require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                    staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 544] = arg1.length
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 576] = mem[(64 * arg1.length) + 172 len 20]
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 608] = address(arg2.length)
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 640] = arg4
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 672] = ext_call.return_data[0]
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 512] = 192
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 704] = 15
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 736] = 'frictionless ? '
                                                        if ext_call.return_data[0] >= arg4:
                                                            require arg1.length < arg2.length
                                                            require arg1.length < arg1.length
                                                            require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                            call mem[(64 * arg1.length) + 172 len 20].0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args address(arg2.length), arg4
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_code.size(stor1)
                                                                staticcall stor1.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                        revert with 0, 'pas rentable !'
                                                                    else:
                                                        else:
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 772] = 32
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 804] = (127 * arg1.length) + 256
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836 len ceil32(127 * arg1.length) + 8] = mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 512 len ceil32(127 * arg1.length) + 8]
                                                            if not (127 * arg1.length) + 256 % 32:
                                                                revert with memory
                                                                  from (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 768
                                                                   len (255 * arg1.length) + 324
                                                            else:
                                                                mem[floor32((127 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836] = mem[floor32((127 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + -((127 * arg1.length) + 256 % 32) + 868 len (127 * arg1.length) + 256 % 32]
                                                                revert with 0, 
                                                                            32,
                                                                            (127 * arg1.length) + 256,
                                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836 len floor32((127 * arg1.length) + 256) + 32]
                                    else:
                                        mem[floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 644] = mem[floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + -((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 % 32) + 676 len (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 % 32]
                                        require ext_code.size(address(_751))
                                        call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256) + (127 * arg1.length) + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if arg1.length >= arg1.length:
                                                mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                require ext_code.size(stor1)
                                                staticcall stor1.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                                    else:
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = 32
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 516] = 14
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 548] = 'pas rentable !'
                                                        revert with memory
                                                          from (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 480
                                                           len (127 * arg1.length) + 100
                                            else:
                                                require arg1.length < arg2.length
                                                mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require arg1.length < arg2.length
                                                    require arg1.length < arg1.length
                                                    require arg1.length < arg2.length
                                                    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484] = this.address
                                                    require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                    staticcall mem[(64 * arg1.length) + 172 len 20].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 484 len (127 * arg1.length) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 544] = arg1.length
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 576] = mem[(64 * arg1.length) + 172 len 20]
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 608] = address(arg2.length)
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 640] = arg4
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 672] = ext_call.return_data[0]
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 512] = 192
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 704] = 15
                                                        mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 736] = 'frictionless ? '
                                                        if ext_call.return_data[0] >= arg4:
                                                            require arg1.length < arg2.length
                                                            require arg1.length < arg1.length
                                                            require ext_code.size(mem[(64 * arg1.length) + 172 len 20])
                                                            call mem[(64 * arg1.length) + 172 len 20].0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args address(arg2.length), arg4
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_code.size(stor1)
                                                                staticcall stor1.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                        revert with 0, 'pas rentable !'
                                                                    else:
                                                        else:
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 768] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 772] = 32
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 804] = (127 * arg1.length) + 256
                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836 len ceil32(127 * arg1.length) + 8] = mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 512 len ceil32(127 * arg1.length) + 8]
                                                            if not (127 * arg1.length) + 256 % 32:
                                                                revert with memory
                                                                  from (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 768
                                                                   len (255 * arg1.length) + 324
                                                            else:
                                                                mem[floor32((127 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836] = mem[floor32((127 * arg1.length) + 256) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + -((127 * arg1.length) + 256 % 32) + 868 len (127 * arg1.length) + 256 % 32]
                                                                revert with 0, 
                                                                            32,
                                                                            (127 * arg1.length) + 256,
                                                                            mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 836 len floor32((127 * arg1.length) + 256) + 32]
}



}
