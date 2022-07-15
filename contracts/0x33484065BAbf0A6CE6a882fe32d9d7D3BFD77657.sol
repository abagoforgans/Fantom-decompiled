contract main {




// =====================  Runtime code  =====================


#
#  - sell()
#
uint32 stor0;
address owner;
mapping of uint8 stor1;
mapping of uint256 stor2;
uint32 stor3;
address addressToken;
uint256 stor3;
uint256 sub_3c5ebfaf;
uint256 sub_d5eccce1;

function sub_3c5ebfaf(?) {
    return sub_3c5ebfaf
}

function addressToken() {
    return address(addressToken)
}

function owner() {
    return address(owner)
}

function isSwapper(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_d5eccce1(?) {
    return sub_d5eccce1
}

function _fallback() payable {
  stop
}

function sub_91abedc6(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e6f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    address(addressToken) = arg1
    sub_3c5ebfaf = 100
    sub_d5eccce1 = 0
}

function sub_5aa8508b(?) {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e6f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    address(addressToken) = arg1
    sub_3c5ebfaf = arg2
    sub_d5eccce1 = arg3
}

function withdrawETH() {
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6f6e6c79206120737761707065722063616e2063616c6c20746869732066756e6374696f,
                    mem[201 len 27]
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4a2c1bab(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e6f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_907ab008(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e6f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        idx = idx + 1
        continue 
}

function withdrawToken() {
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6f6e6c79206120737761707065722063616e2063616c6c20746869732066756e6374696f,
                    mem[201 len 27]
    call address(addressToken).0x70a08231 with:
         gas gas_remaining wei
        args Mask(224, 32, this.address) >> 32, mem[196 len 4]
    if not return_data.size:
        call address(addressToken) with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(224, 32, unknown_0x70a08231(?????), Mask(224, 32, this.address) >> 32) << 224, mem[328 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 34, 0x737769746864726177206f6620746f6b656e7320746f206f776e6572206661696c65, mem[366 len 30]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            34,
                            0x737769746864726177206f6620746f6b656e7320746f206f776e6572206661696c65,
                            mem[ceil32(return_data.size) + 367 len 30]
    else:
        mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(addressToken) with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(224, 0, mem[196 len 28]) << 256, mem[ceil32(return_data.size) + 329 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            34,
                            0x737769746864726177206f6620746f6b656e7320746f206f776e6572206661696c65,
                            mem[ceil32(return_data.size) + 367 len 30]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            34,
                            0x737769746864726177206f6620746f6b656e7320746f206f776e6572206661696c65,
                            mem[(2 * ceil32(return_data.size)) + 368 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 30]
    ('bool', 'ext_call.success')
}

function buy() {
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6f6e6c79206120737761707065722063616e2063616c6c20746869732066756e6374696f,
                    mem[201 len 27]
    mem[0] = address(addressToken)
    mem[32] = 2
    if stor2[address(stor3)]:
        revert with 0, 'already performed the buy swap'
    if eth.balance(this.address) <= 0:
        revert with 0, 'zero ethereum to sell'
    mem[96] = 4
    mem[128 len 4] = WETH()
    mem[132 len 0] = None
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[132 len 4] with:
         gas gas_remaining wei
    require return_data.size
    mem[132] = return_data.size
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _1934 = mem[164]
    if mem[176 len 20] < address(addressToken):
        mem[ceil32(return_data.size) + 169] = mem[176 len 20]
        mem[ceil32(return_data.size) + 201] = address(addressToken)
        mem[ceil32(return_data.size) + 133] = 68
        mem[ceil32(return_data.size) + 165 len 4] = getPair(address arg1, address arg2)
        mem[ceil32(return_data.size) + 233 len 64] = 0, mem[ceil32(return_data.size) + 169], Mask(224, 0, stor3)
        mem[ceil32(return_data.size) + 325 len 4] = uint32(stor3)
        call 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.mem[ceil32(return_data.size) + 197 len 4] with:
             gas gas_remaining wei
            args address(addressToken), Mask(224, 32, mem[ceil32(return_data.size) + 169], Mask(224, 0, stor3)) >> 32, mem[ceil32(return_data.size) + 297 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 
                        32,
                        34,
                        0x2e636f756c64206e6f7420666574636820746f6b656e207061697220616464726573,
                        mem[ceil32(return_data.size) + 335 len 30]
        mem[ceil32(return_data.size) + 233] = return_data.size
        mem[ceil32(return_data.size) + 265 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        34,
                        0x2e636f756c64206e6f7420666574636820746f6b656e207061697220616464726573,
                        mem[(2 * ceil32(return_data.size)) + 336 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 30]
        require return_data.size >= 32
        _3918 = mem[ceil32(return_data.size) + 265]
        mem[(2 * ceil32(return_data.size)) + 234] = mem[ceil32(return_data.size) + 277 len 20]
        emit Address(mem[(2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
        mem[(2 * ceil32(return_data.size)) + 234] = 4
        mem[(2 * ceil32(return_data.size)) + 266 len 4] = getReserves()
        mem[(2 * ceil32(return_data.size)) + 270 len 0] = None
        call address(_3918).mem[(2 * ceil32(return_data.size)) + 270 len 4] with:
             gas gas_remaining wei
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'could not fetch pair reserves'
        mem[(2 * ceil32(return_data.size)) + 270] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 302 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'could not fetch pair reserves'
        require return_data.size >= 96
        _5833 = mem[(2 * ceil32(return_data.size)) + 302]
        _5834 = mem[(2 * ceil32(return_data.size)) + 334]
        if address(_1934) == address(_1934):
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271] = mem[(2 * ceil32(return_data.size)) + 302]
            emit 0x80d4cbb8: mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271], _5834
            if _5833 <= 0:
                revert with 0, 'no liquidity in the pool'
            if _5834 <= 0:
                revert with 0, 'no liquidity in the pool'
            require (997 * eth.balance(this.address)) + (1000 * _5833)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 0] = None
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 224] = swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4), 997 * eth.balance(this.address) * _5834 / (997 * eth.balance(this.address)) + (1000 * _5833), Array(len=block.timestamp, data=2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]), address(this.address)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 615 len 4]
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591 len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args Mask(1760, -1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]) << 1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'the buy transaction failed'
            mem[64] = (4 * ceil32(return_data.size)) + 628
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(4 * ceil32(return_data.size)) + 628] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 632] = 32
                mem[(4 * ceil32(return_data.size)) + 664] = 26
                mem[(4 * ceil32(return_data.size)) + 696] = 'the buy transaction failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 628
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require return_data.size >= 32
            _9229 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 64 <= return_data.size + 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]) + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + 628] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]
            mem[(4 * ceil32(return_data.size)) + 660 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9229 + 659])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9229 + 691 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9229 + 659])]
        else:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271] = mem[(2 * ceil32(return_data.size)) + 334]
            emit 0x80d4cbb8: mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271], _5833
            if _5834 <= 0:
                revert with 0, 'no liquidity in the pool'
            if _5833 <= 0:
                revert with 0, 'no liquidity in the pool'
            require (997 * eth.balance(this.address)) + (1000 * _5834)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 0] = None
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 224] = swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4), 997 * eth.balance(this.address) * _5833 / (997 * eth.balance(this.address)) + (1000 * _5834), Array(len=block.timestamp, data=2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]), address(this.address)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 615 len 4]
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591 len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args Mask(1760, -1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]) << 1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'the buy transaction failed'
            mem[64] = (4 * ceil32(return_data.size)) + 628
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(4 * ceil32(return_data.size)) + 628] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 632] = 32
                mem[(4 * ceil32(return_data.size)) + 664] = 26
                mem[(4 * ceil32(return_data.size)) + 696] = 'the buy transaction failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 628
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require return_data.size >= 32
            _9233 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 64 <= return_data.size + 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]) + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + 628] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]
            mem[(4 * ceil32(return_data.size)) + 660 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9233 + 659])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9233 + 691 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9233 + 659])]
    else:
        mem[ceil32(return_data.size) + 169] = address(addressToken)
        mem[ceil32(return_data.size) + 201] = address(_1934)
        mem[ceil32(return_data.size) + 133] = 68
        mem[ceil32(return_data.size) + 169 len 28] = Mask(224, 0, stor3)
        mem[ceil32(return_data.size) + 165 len 4] = getPair(address arg1, address arg2)
        mem[ceil32(return_data.size) + 233 len 64] = getPair(address arg1, address arg2), Mask(224, 0, stor3), uint32(stor3), address(_1934) << 64
        mem[ceil32(return_data.size) + 325 len 4] = 0
        call 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3 with:
           funct uint32(stor3)
             gas gas_remaining wei
            args address(_1934) << 320, mem[ceil32(return_data.size) + 297 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 
                        32,
                        34,
                        0x2e636f756c64206e6f7420666574636820746f6b656e207061697220616464726573,
                        mem[ceil32(return_data.size) + 335 len 30]
        mem[ceil32(return_data.size) + 233] = return_data.size
        mem[ceil32(return_data.size) + 265 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        34,
                        0x2e636f756c64206e6f7420666574636820746f6b656e207061697220616464726573,
                        mem[(2 * ceil32(return_data.size)) + 336 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 30]
        require return_data.size >= 32
        _3932 = mem[ceil32(return_data.size) + 265]
        mem[(2 * ceil32(return_data.size)) + 234] = mem[ceil32(return_data.size) + 277 len 20]
        emit Address(mem[(2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
        mem[(2 * ceil32(return_data.size)) + 234] = 4
        mem[(2 * ceil32(return_data.size)) + 266 len 4] = getReserves()
        mem[(2 * ceil32(return_data.size)) + 270 len 0] = None
        call address(_3932).mem[(2 * ceil32(return_data.size)) + 270 len 4] with:
             gas gas_remaining wei
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'could not fetch pair reserves'
        mem[(2 * ceil32(return_data.size)) + 270] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 302 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'could not fetch pair reserves'
        require return_data.size >= 96
        _5841 = mem[(2 * ceil32(return_data.size)) + 302]
        _5842 = mem[(2 * ceil32(return_data.size)) + 334]
        if address(addressToken) == address(_1934):
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271] = mem[(2 * ceil32(return_data.size)) + 302]
            emit 0x80d4cbb8: mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271], _5842
            if _5841 <= 0:
                revert with 0, 'no liquidity in the pool'
            if _5842 <= 0:
                revert with 0, 'no liquidity in the pool'
            require (997 * eth.balance(this.address)) + (1000 * _5841)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 0] = None
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 224] = swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4), 997 * eth.balance(this.address) * _5842 / (997 * eth.balance(this.address)) + (1000 * _5841), Array(len=block.timestamp, data=2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]), address(this.address)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 615 len 4]
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591 len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args Mask(1760, -1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]) << 1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'the buy transaction failed'
            mem[64] = (4 * ceil32(return_data.size)) + 628
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(4 * ceil32(return_data.size)) + 628] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 632] = 32
                mem[(4 * ceil32(return_data.size)) + 664] = 26
                mem[(4 * ceil32(return_data.size)) + 696] = 'the buy transaction failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 628
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require return_data.size >= 32
            _9261 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 64 <= return_data.size + 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]) + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + 628] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]
            mem[(4 * ceil32(return_data.size)) + 660 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9261 + 659])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9261 + 691 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9261 + 659])]
        else:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271] = mem[(2 * ceil32(return_data.size)) + 334]
            emit 0x80d4cbb8: mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271], _5841
            if _5842 <= 0:
                revert with 0, 'no liquidity in the pool'
            if _5841 <= 0:
                revert with 0, 'no liquidity in the pool'
            require (997 * eth.balance(this.address)) + (1000 * _5842)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 0] = None
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 224] = swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4), 997 * eth.balance(this.address) * _5841 / (997 * eth.balance(this.address)) + (1000 * _5842), Array(len=block.timestamp, data=2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]), address(this.address)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 615 len 4]
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591 len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args Mask(1760, -1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]) << 1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'the buy transaction failed'
            mem[64] = (4 * ceil32(return_data.size)) + 628
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(4 * ceil32(return_data.size)) + 628] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 632] = 32
                mem[(4 * ceil32(return_data.size)) + 664] = 26
                mem[(4 * ceil32(return_data.size)) + 696] = 'the buy transaction failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 628
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require return_data.size >= 32
            _9265 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 64 <= return_data.size + 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]) + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + 628] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]
            mem[(4 * ceil32(return_data.size)) + 660 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9265 + 659])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9265 + 691 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _9265 + 659])]
    require 1 < mem[(4 * ceil32(return_data.size)) + 628]
    stor2[address(stor3)] = eth.balance(this.address)
    emit 0x47390cea: eth.balance(this.address)
    emit 0x8b8423d7: mem[(4 * ceil32(return_data.size)) + 692]
}



}
