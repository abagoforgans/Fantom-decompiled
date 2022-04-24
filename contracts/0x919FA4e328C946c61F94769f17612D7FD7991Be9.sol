contract main {




// =====================  Runtime code  =====================


#
#  - sub_68b5371d(?)
#
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
            if ext_call.return_data[0] < cd[(arg4 + 164)]:
                revert with 0, 'frictionless ?'
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
            call mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[(32 * cd[(arg4 + 132)] + 1) + 128]), cd[(arg4 + 164)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
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
        _41 = mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
        require (ext_call.return_data[0] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]) - (cd[(arg4 + 164)] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192])
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 320] = cd[(arg4 + 132)] - 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 352] = (10000 * ext_call.return_data[0] * cd[(arg4 + 164)] / (ext_call.return_data[0] * _41) - (cd[(arg4 + 164)] * _41)) + 1
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
        _351 = mem[(32 * cd[(arg4 + 132)]) + 128]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0xdfe168100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_351))
        staticcall address(_351).token0() with:
                gas gas_remaining wei
               args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (95 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (127 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (95 * cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        if mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20] != ext_call.return_data[12 len 20]:
            _360 = mem[(32 * cd[(arg4 + 132)]) + 128]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = cd[(arg4 + 164)]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 0
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
            if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
                require ext_code.size(address(_360))
                call address(_360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (160 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _458 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_458))
                    staticcall address(_458).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _486 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_486))
                    call address(_486).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
                require ext_code.size(address(_360))
                call address(_360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (127 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (95 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _466 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_466))
                    staticcall address(_466).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _499 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_499))
                    call address(_499).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            _364 = mem[(32 * cd[(arg4 + 132)]) + 128]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 0
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
            if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
                require ext_code.size(address(_364))
                call address(_364).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (160 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _462 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_462))
                    staticcall address(_462).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _491 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_491))
                    call address(_491).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
                require ext_code.size(address(_364))
                call address(_364).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (127 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (95 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _469 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_469))
                    staticcall address(_469).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _504 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_504))
                    call address(_504).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
            if ext_call.return_data[0] < cd[(arg4 + 164)]:
                revert with 0, 'frictionless ?'
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
            call mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[(32 * cd[(arg4 + 132)] + 1) + 128]), cd[(arg4 + 164)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
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
        _41 = mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
        require (ext_call.return_data[0] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]) - (cd[(arg4 + 164)] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192])
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 320] = cd[(arg4 + 132)] - 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 352] = (10000 * ext_call.return_data[0] * cd[(arg4 + 164)] / (ext_call.return_data[0] * _41) - (cd[(arg4 + 164)] * _41)) + 1
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
        _351 = mem[(32 * cd[(arg4 + 132)]) + 128]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0xdfe168100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_351))
        staticcall address(_351).token0() with:
                gas gas_remaining wei
               args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (95 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (127 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (95 * cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        if mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20] != ext_call.return_data[12 len 20]:
            _360 = mem[(32 * cd[(arg4 + 132)]) + 128]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = cd[(arg4 + 164)]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 0
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
            if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
                require ext_code.size(address(_360))
                call address(_360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (160 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _458 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_458))
                    staticcall address(_458).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _486 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_486))
                    call address(_486).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
                require ext_code.size(address(_360))
                call address(_360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (127 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (95 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _466 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_466))
                    staticcall address(_466).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _499 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_499))
                    call address(_499).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            _364 = mem[(32 * cd[(arg4 + 132)]) + 128]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 0
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
            if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
                require ext_code.size(address(_364))
                call address(_364).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (160 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _462 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_462))
                    staticcall address(_462).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _491 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_491))
                    call address(_491).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
                require ext_code.size(address(_364))
                call address(_364).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (127 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (95 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _469 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_469))
                    staticcall address(_469).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _504 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_504))
                    call address(_504).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
            if ext_call.return_data[0] < cd[(arg4 + 164)]:
                revert with 0, 'frictionless ?'
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
            require ext_code.size(mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20])
            call mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[(32 * cd[(arg4 + 132)] + 1) + 128]), cd[(arg4 + 164)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
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
        _41 = mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
        require (ext_call.return_data[0] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]) - (cd[(arg4 + 164)] * mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192])
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 320] = cd[(arg4 + 132)] - 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 352] = (10000 * ext_call.return_data[0] * cd[(arg4 + 164)] / (ext_call.return_data[0] * _41) - (cd[(arg4 + 164)] * _41)) + 1
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
        _351 = mem[(32 * cd[(arg4 + 132)]) + 128]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0xdfe168100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_351))
        staticcall address(_351).token0() with:
                gas gas_remaining wei
               args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (95 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (127 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (95 * cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require cd[(arg4 + 132)] < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        if mem[(32 * cd[(arg4 + 132)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 172 len 20] != ext_call.return_data[12 len 20]:
            _360 = mem[(32 * cd[(arg4 + 132)]) + 128]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = cd[(arg4 + 164)]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 0
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
            if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
                require ext_code.size(address(_360))
                call address(_360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (160 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _458 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_458))
                    staticcall address(_458).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _486 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_486))
                    call address(_486).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
                require ext_code.size(address(_360))
                call address(_360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (127 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (95 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _466 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_466))
                    staticcall address(_466).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _499 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_499))
                    call address(_499).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            _364 = mem[(32 * cd[(arg4 + 132)]) + 128]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 0
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = this.address
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 580] = 128
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 612] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256
            mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 31) + 8]
            if not (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32:
                require ext_code.size(address(_364))
                call address(_364).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (160 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (160 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _462 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_462))
                    staticcall address(_462).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _491 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_491))
                    call address(_491).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 644] = mem[floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + -((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32) + 676 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256 % 32]
                require ext_code.size(address(_364))
                call address(_364).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len floor32((32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256) + (127 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (127 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (95 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _469 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = this.address
                    require ext_code.size(address(_469))
                    staticcall address(_469).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 32]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg4 + 164)]:
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = 32
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = 14
                        mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 480
                           len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 100
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
                    _504 = mem[(32 * cd[(arg4 + 132)] + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]
                    require cd[(arg4 + 132)] + 1 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484] = mem[(32 * cd[(arg4 + 132)] + 1) + 140 len 20]
                    mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516] = cd[(arg4 + 164)]
                    require ext_code.size(address(_504))
                    call address(_504).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (64 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 484 len (127 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
            if ext_call.return_data[0] < ('cd', 100)[4]:
                revert with 0, 'frictionless ?'
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
            require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
            require ext_code.size(mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 172 len 20])
            call mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 172 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args address(mem[(32 * ('cd', 100)[3] + 1) + 128]), ('cd', 100)[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
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
        _41 = mem[(32 * ('cd', 100)[3]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192]
        require (ext_call.return_data[0] * mem[(32 * ('cd', 100)[3]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192]) - (('cd', 100)[4] * mem[(32 * ('cd', 100)[3]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192])
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 320] = ('cd', 100)[3] - 1
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 352] = (10000 * ext_call.return_data[0] * ('cd', 100)[4] / (ext_call.return_data[0] * _41) - (('cd', 100)[4] * _41)) + 1
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
        _351 = mem[(32 * ('cd', 100)[3]) + 128]
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = 0xdfe168100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_351))
        staticcall address(_351).token0() with:
                gas gas_remaining wei
               args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (95 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (127 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (95 * cd[(cd[100] + ('cd', 100)[0] + 36)])]
        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ('cd', 100)[3] < cd[(cd[100] + ('cd', 100)[1] + 36)]
        require ('cd', 100)[3] < cd[(cd[100] + ('cd', 100)[0] + 36)]
        if mem[(32 * ('cd', 100)[3]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 172 len 20] != ext_call.return_data[12 len 20]:
            _360 = mem[(32 * ('cd', 100)[3]) + 128]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = ('cd', 100)[4]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = 0
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 548] = this.address
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 580] = 128
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 612] = (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 644 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 31) + 8] = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 31) + 8]
            if not (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32:
                require ext_code.size(address(_360))
                call address(_360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (160 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (160 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (128 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
                    _458 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
                    require ext_code.size(address(_458))
                    staticcall address(_458).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ('cd', 100)[4]:
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = 32
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = 14
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480
                           len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 100
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
                    _486 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = mem[(32 * ('cd', 100)[3] + 1) + 140 len 20]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = ('cd', 100)[4]
                    require ext_code.size(address(_486))
                    call address(_486).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                mem[floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 644] = mem[floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + -((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32) + 676 len (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32]
                require ext_code.size(address(_360))
                call address(_360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (127 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (127 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (95 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
                    _466 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
                    require ext_code.size(address(_466))
                    staticcall address(_466).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ('cd', 100)[4]:
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = 32
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = 14
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480
                           len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 100
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
                    _499 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = mem[(32 * ('cd', 100)[3] + 1) + 140 len 20]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = ('cd', 100)[4]
                    require ext_code.size(address(_499))
                    call address(_499).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            _364 = mem[(32 * ('cd', 100)[3]) + 128]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = 0
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = ('cd', 100)[4]
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 548] = this.address
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 580] = 128
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 612] = (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256
            mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 644 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 31) + 8] = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 31) + 8]
            if not (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32:
                require ext_code.size(address(_364))
                call address(_364).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (160 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (160 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (128 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
                    _462 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
                    require ext_code.size(address(_462))
                    staticcall address(_462).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ('cd', 100)[4]:
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = 32
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = 14
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480
                           len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 100
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
                    _491 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = mem[(32 * ('cd', 100)[3] + 1) + 140 len 20]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = ('cd', 100)[4]
                    require ext_code.size(address(_491))
                    call address(_491).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                mem[floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 644] = mem[floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + -((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32) + 676 len (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256 % 32]
                require ext_code.size(address(_364))
                call address(_364).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len floor32((32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256) + (127 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (127 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (95 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
                    _469 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = this.address
                    require ext_code.size(address(_469))
                    staticcall address(_469).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 32]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ('cd', 100)[4]:
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = 32
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = 14
                        mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 548] = 'frictionless ?'
                        revert with memory
                          from (64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 480
                           len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 100
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[1] + 36)]
                    _504 = mem[(32 * ('cd', 100)[3] + 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160]
                    require ('cd', 100)[3] + 1 < cd[(cd[100] + ('cd', 100)[0] + 36)]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484] = mem[(32 * ('cd', 100)[3] + 1) + 140 len 20]
                    mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 516] = ('cd', 100)[4]
                    require ext_code.size(address(_504))
                    call address(_504).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (64 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 484 len (127 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
}



}
