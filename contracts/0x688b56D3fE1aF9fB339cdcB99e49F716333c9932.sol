contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_2bdab8aa(?)
#  - sub_3de2f6b2(?)
#
address stor0;
address stor1;
address WETHAddress;
address USDTAddress;
address owner;
uint32 stor5;
address rewardWalletAddress;
uint256 stor5;
mapping of uint8 stor6;
mapping of address sub_b48ce8c0;
address sub_bcc1d04fAddress;
address sub_05dca687Address;
address sub_0ed524c8Address;
address sub_a2d2e3dbAddress;
address borrowerAddress;
uint256 repayAmount;

function sub_05dca687(?) {
    return sub_05dca687Address
}

function sub_0a9e1613(?) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_0ed524c8(?) {
    return sub_0ed524c8Address
}

function borrower() {
    return borrowerAddress
}

function owner() {
    return owner
}

function sub_a2d2e3db(?) {
    return sub_a2d2e3dbAddress
}

function WETH() {
    return WETHAddress
}

function sub_b48ce8c0(?) {
    require calldata.size - 4 >= 32
    return sub_b48ce8c0[arg1]
}

function sub_bcc1d04f(?) {
    return sub_bcc1d04fAddress
}

function USDT() {
    return USDTAddress
}

function repayAmount() {
    return repayAmount
}

function rewardWallet() {
    return address(rewardWalletAddress)
}

function _fallback() payable {
    revert
}

function sub_f176a51c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor0 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(rewardWalletAddress) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3ca373dc(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    if not sub_b48ce8c0[address(arg2)]:
        staticcall arg1.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args arg2
    else:
        staticcall arg1.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args sub_b48ce8c0[address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7e2cb22b(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function sub_9e7a5b95(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'length error'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        sub_b48ce8c0[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        idx = idx + 1
        continue 
}

function sub_44578099(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        call address(rewardWalletAddress) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call arg1 with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function sub_11f8444a(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not sub_b48ce8c0[address(arg3)]:
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args arg3
    else:
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args sub_b48ce8c0[address(arg3)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not sub_b48ce8c0[address(arg2)]:
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args arg2
    else:
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args sub_b48ce8c0[address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'priceBorrowedMantissa error'
    if not ext_call.return_data[0]:
        revert with 0, 'priceCollateralMantissa error'
    require ext_code.size(arg1)
    staticcall arg1.liquidationIncentiveMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg4:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0] * arg4 / arg4 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * arg4 / 10^18:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] * arg4 / 10^18 / ext_call.return_data[0] * arg4 / 10^18 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (ext_call.return_data[0] * ext_call.return_data[0] * arg4 / 10^18 / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_4fe05a51(?) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 < repayAmount:
        revert with 0, 'repayAmount less than amount'
    require ext_code.size(sub_05dca687Address)
    staticcall sub_05dca687Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < repayAmount:
        revert with 0, 'repayAmount not here'
    if stor6[stor8]:
        require ext_code.size(WETHAddress)
        call WETHAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args repayAmount
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_bcc1d04fAddress)
        call sub_bcc1d04fAddress.liquidateBorrow(address arg1, address arg2) with:
           value repayAmount wei
             gas gas_remaining wei
            args borrowerAddress, sub_0ed524c8Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_05dca687Address)
        call sub_05dca687Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_bcc1d04fAddress, repayAmount
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_bcc1d04fAddress)
        call sub_bcc1d04fAddress.liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args borrowerAddress, repayAmount, sub_0ed524c8Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[ceil32(arg4.length) + 224 len 20] = call.data[calldata.size len 20]
            idx = 0
            while idx < 15:
                require idx < 0, 15
                require idx < 20
                mem[idx + ceil32(arg4.length) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                continue 
            if ext_call.return_data[0]:
                revert with 0, 32, 20, address(mem[ceil32(arg4.length) + 224 len 15], 0, 0, 0, 0, 0, mem[ceil32(arg4.length) + 251 len 5])
    require ext_code.size(sub_0ed524c8Address)
    staticcall sub_0ed524c8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'sizeToken not found'
    require ext_code.size(sub_0ed524c8Address)
    call sub_0ed524c8Address.redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor6[stor10]:
        if ext_call.return_data[0]:
            revert with 0, 'redeem size token error'
    else:
        if ext_call.return_data[0]:
            revert with 0, 'redeem size eth token error'
        require ext_code.size(WETHAddress)
        call WETHAddress.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_a2d2e3dbAddress)
    staticcall sub_a2d2e3dbAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'collateral not found'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'not touch _amountToRepay'
}

function hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e6f6e6c79207065726d697373696f6e656420556e6973776170563220706169722063616e2063616c,
                    mem[205 len 23]
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 256
    require cd[(arg4 + 228)] <= 4294967296
    require cd[(arg4 + 228)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 228)] + 36)] <= 4294967296 and cd[(arg4 + 228)] + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 228)] + 36)]] = call.data[arg4 + cd[(arg4 + 228)] + 68 len cd[(arg4 + cd[(arg4 + 228)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 128] = 0
    require cd[(arg4 + 260)] <= 4294967296
    require cd[(arg4 + 260)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 260)] + 36)] <= 4294967296 and cd[(arg4 + 260)] + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 68 <= arg4.length + 36
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 260)] + 36)]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160 len cd[(arg4 + cd[(arg4 + 260)] + 36)]] = call.data[arg4 + cd[(arg4 + 260)] + 68 len cd[(arg4 + cd[(arg4 + 260)] + 36)]]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160] = 0
    require uint8(cd[(arg4 + 36)]) <= 2
    if not uint8(cd[(arg4 + 36)]):
        if cd[(arg4 + 164)]:
            require ext_code.size(WETHAddress)
            call WETHAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if cd[(arg4 + 100)] < repayAmount:
            revert with 0, 'repayAmount less than amount'
        require ext_code.size(sub_05dca687Address)
        staticcall sub_05dca687Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < repayAmount:
            revert with 0, 'repayAmount not here'
        if stor6[stor8]:
            require ext_code.size(WETHAddress)
            call WETHAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args repayAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_bcc1d04fAddress)
            call sub_bcc1d04fAddress.liquidateBorrow(address arg1, address arg2) with:
               value repayAmount wei
                 gas gas_remaining wei
                args borrowerAddress, sub_0ed524c8Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(sub_05dca687Address)
            call sub_05dca687Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_bcc1d04fAddress, repayAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_bcc1d04fAddress)
            call sub_bcc1d04fAddress.liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args borrowerAddress, repayAmount, sub_0ed524c8Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 20] = call.data[calldata.size len 20]
                idx = 0
                while idx < 15:
                    require idx < 0, 15
                    require idx < 20
                    mem[idx + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                20,
                                address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 15], 0, 0, 0, 0, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 283 len 5])
        require ext_code.size(sub_0ed524c8Address)
        staticcall sub_0ed524c8Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'sizeToken not found'
        require ext_code.size(sub_0ed524c8Address)
        call sub_0ed524c8Address.redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor6[stor10]:
            if ext_call.return_data[0]:
                revert with 0, 'redeem size token error'
        else:
            if ext_call.return_data[0]:
                revert with 0, 'redeem size eth token error'
            require ext_code.size(WETHAddress)
            call WETHAddress.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_a2d2e3dbAddress)
        staticcall sub_a2d2e3dbAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'collateral not found'
        if cd[(arg4 + 196)]:
            require ext_code.size(0)
            staticcall 0x0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        else:
            require ext_code.size(address(cd[(arg4 + 68)]))
            staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1:
            revert with 0, 'not touch _amountToRepay'
        if cd[(arg4 + 196)]:
            require ext_code.size(WETHAddress)
            call WETHAddress.0xd0e30db0 with:
               value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1:
            revert with 0, 'not amountToRepay'
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
    else:
        require uint8(cd[(arg4 + 36)]) <= 2
        if uint8(cd[(arg4 + 36)]) == 1:
            if cd[(arg4 + 164)]:
                require ext_code.size(WETHAddress)
                call WETHAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args cd[(arg4 + 100)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 68)]))
            staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 997 * ext_call.return_data[0]
            if cd[(arg4 + 100)] < repayAmount:
                revert with 0, 'repayAmount less than amount'
            require ext_code.size(sub_05dca687Address)
            staticcall sub_05dca687Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < repayAmount:
                revert with 0, 'repayAmount not here'
            if stor6[stor8]:
                require ext_code.size(WETHAddress)
                call WETHAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args repayAmount
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_bcc1d04fAddress)
                call sub_bcc1d04fAddress.liquidateBorrow(address arg1, address arg2) with:
                   value repayAmount wei
                     gas gas_remaining wei
                    args borrowerAddress, sub_0ed524c8Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(sub_05dca687Address)
                call sub_05dca687Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_bcc1d04fAddress, repayAmount
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_bcc1d04fAddress)
                call sub_bcc1d04fAddress.liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args borrowerAddress, repayAmount, sub_0ed524c8Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 20] = call.data[calldata.size len 20]
                    idx = 0
                    while idx < 15:
                        require idx < 0, 15
                        require idx < 20
                        mem[idx + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        idx = idx + 1
                        continue 
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    20,
                                    address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 15], 0, 0, 0, 0, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 283 len 5])
            require ext_code.size(sub_0ed524c8Address)
            staticcall sub_0ed524c8Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'sizeToken not found'
            require ext_code.size(sub_0ed524c8Address)
            call sub_0ed524c8Address.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor6[stor10]:
                if ext_call.return_data[0]:
                    revert with 0, 'redeem size token error'
            else:
                if ext_call.return_data[0]:
                    revert with 0, 'redeem size eth token error'
                require ext_code.size(WETHAddress)
                call WETHAddress.0xd0e30db0 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_a2d2e3dbAddress)
            staticcall sub_a2d2e3dbAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'collateral not found'
            if cd[(arg4 + 196)]:
                require ext_code.size(0)
                staticcall 0x0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
            else:
                require ext_code.size(address(cd[(arg4 + 132)]))
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1:
                revert with 0, 'not touch _amountToRepay'
            if cd[(arg4 + 196)]:
                require ext_code.size(WETHAddress)
                call WETHAddress.0xd0e30db0 with:
                   value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
        else:
            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 64
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(USDTAddress)
            call USDTAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[140 len 20], mem[160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
            require ext_code.size(mem[140 len 20])
            if address(ext_call.return_data[0]) == address(cd[(arg4 + 68)]):
                if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
                    call mem[140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 100)], cd[(arg4 + 100)], this.address, 128, 0
                else:
                    call mem[140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 100)], 0, this.address, 128, 0
            else:
                if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
                    call mem[140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, cd[(arg4 + 100)], this.address, 128, 0
                else:
                    call mem[140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 997 * ext_call.return_data[0]
            if cd[(arg4 + 100)] < repayAmount:
                revert with 0, 'repayAmount less than amount'
            require ext_code.size(sub_05dca687Address)
            staticcall sub_05dca687Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < repayAmount:
                revert with 0, 'repayAmount not here'
            if stor6[stor8]:
                require ext_code.size(WETHAddress)
                call WETHAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args repayAmount
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_bcc1d04fAddress)
                call sub_bcc1d04fAddress.liquidateBorrow(address arg1, address arg2) with:
                   value repayAmount wei
                     gas gas_remaining wei
                    args borrowerAddress, sub_0ed524c8Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_0ed524c8Address)
                staticcall sub_0ed524c8Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'sizeToken not found'
                require ext_code.size(sub_0ed524c8Address)
                call sub_0ed524c8Address.redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor6[stor10]:
                    if ext_call.return_data[0]:
                        revert with 0, 'redeem size token error'
                else:
                    if ext_call.return_data[0]:
                        revert with 0, 'redeem size eth token error'
                    require ext_code.size(WETHAddress)
                    call WETHAddress.0xd0e30db0 with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_a2d2e3dbAddress)
                staticcall sub_a2d2e3dbAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'collateral not found'
                require ext_code.size(address(cd[(arg4 + 132)]))
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (1000 * ext_call.return_data[0] * mem[160] / 997 * ext_call.return_data[0]) + 1:
                    revert with 0, 'not touch _amountToRepay'
                require ext_code.size(address(cd[(arg4 + 132)]))
                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, (1000 * ext_call.return_data[0] * mem[160] / 997 * ext_call.return_data[0]) + 1
            else:
                require ext_code.size(sub_05dca687Address)
                call sub_05dca687Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_bcc1d04fAddress, repayAmount
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_bcc1d04fAddress)
                call sub_bcc1d04fAddress.liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args borrowerAddress, repayAmount, sub_0ed524c8Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(sub_0ed524c8Address)
                    staticcall sub_0ed524c8Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'sizeToken not found'
                    require ext_code.size(sub_0ed524c8Address)
                    call sub_0ed524c8Address.redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor6[stor10]:
                        if ext_call.return_data[0]:
                            revert with 0, 'redeem size token error'
                    else:
                        if ext_call.return_data[0]:
                            revert with 0, 'redeem size eth token error'
                        require ext_code.size(WETHAddress)
                        call WETHAddress.0xd0e30db0 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_a2d2e3dbAddress)
                    staticcall sub_a2d2e3dbAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'collateral not found'
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (1000 * ext_call.return_data[0] * mem[160] / 997 * ext_call.return_data[0]) + 1:
                        revert with 0, 'not touch _amountToRepay'
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, (1000 * ext_call.return_data[0] * mem[160] / 997 * ext_call.return_data[0]) + 1
                else:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 20] = call.data[calldata.size len 20]
                    idx = 0
                    while idx < 15:
                        require idx < 15
                        require idx < 20
                        mem[idx + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        idx = idx + 1
                        continue 
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    '',
                                    20,
                                    address(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 15], 0, 0, 0, 0, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 315 len 5])
                    require ext_code.size(sub_0ed524c8Address)
                    staticcall sub_0ed524c8Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', 19, 0x73697a65546f6b656e206e6f7420666f756e6400000000000000000000000000
                    require ext_code.size(sub_0ed524c8Address)
                    call sub_0ed524c8Address.redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor6[stor10]:
                        if ext_call.return_data[0]:
                            revert with 0, '', 23, 'redeem size token error'
                    else:
                        if ext_call.return_data[0]:
                            revert with 0, '', 27, 'redeem size eth token error'
                        require ext_code.size(WETHAddress)
                        call WETHAddress.0xd0e30db0 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_a2d2e3dbAddress)
                    staticcall sub_a2d2e3dbAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, '', 20, 0x636f6c6c61746572616c206e6f7420666f756e64000000000000000000000000
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (1000 * ext_call.return_data[0] * mem[160] / 997 * ext_call.return_data[0]) + 1:
                        revert with 0, '', 24, 'not touch _amountToRepay'
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    call address(cd[(arg4 + 132)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, 0, (1000 * ext_call.return_data[0] * mem[160] / 997 * ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_17dc5430(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        revert with 0, 'getAccountLiquidity less 0'
    require ext_code.size(arg3)
    staticcall arg3.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not ext_call.return_data[64]:
        revert with 0, 'borrowBalance less 0'
    require ext_code.size(arg1)
    staticcall arg1.closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'repayNow less 0'
    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 27],
                    mem[224 len 4]
    if ext_call.return_data[64] * ext_call.return_data[0] / 10^18 <= 0:
        revert with 0, 'repayNow less 0'
    require ext_code.size(arg1)
    staticcall arg1.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not sub_b48ce8c0[address(arg3)]:
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args arg3
    else:
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args sub_b48ce8c0[address(arg3)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not sub_b48ce8c0[address(arg2)]:
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args arg2
    else:
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args sub_b48ce8c0[address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'priceBorrowedMantissa error'
    if not ext_call.return_data[0]:
        revert with 0, 'priceCollateralMantissa error'
    require ext_code.size(arg1)
    staticcall arg1.liquidationIncentiveMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(arg2)
        staticcall arg2.getAccountSnapshot(address arg1) with:
                gas gas_remaining wei
               args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not ext_call.return_data[32]:
            if 0 / ext_call.return_data[0] <= 0:
                if not ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                    if not sub_b48ce8c0[address(arg3)]:
                        require ext_code.size(arg1)
                        staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                                gas gas_remaining wei
                               args 0, 0, address(arg2), msg.sender, arg4, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'liquidateAllowed error'
                        else:
                            return 0
                    else:
                        return 0
                if 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18 != 277750 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
                if not sub_b48ce8c0[address(arg3)]:
                    require ext_code.size(arg1)
                    staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidateAllowed error'
                return (277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9)
            if ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                if 0 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
            if 0 / ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / ext_call.return_data[0]
            if not 0 / 0 / ext_call.return_data[0]:
                if not sub_b48ce8c0[address(arg3)]:
                    require ext_code.size(arg1)
                    staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args 0, 0, address(arg2), msg.sender, arg4, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidateAllowed error'
                    else:
                        return 0
                else:
                    return 0
            if 277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 0 / 0 / ext_call.return_data[0] != 277750 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
            return (277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 10^9)
        if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if 0 / ext_call.return_data[0] <= ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
            if not ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                if not sub_b48ce8c0[address(arg3)]:
                    require ext_code.size(arg1)
                    staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args 0, 0, address(arg2), msg.sender, arg4, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidateAllowed error'
                    else:
                        return 0
                else:
                    return 0
            if 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18 != 277750 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
            return (277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9)
        if not ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
            if 0 / ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / ext_call.return_data[0]
            if not 0 / 0 / ext_call.return_data[0]:
                if not sub_b48ce8c0[address(arg3)]:
                    require ext_code.size(arg1)
                    staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args 0, 0, address(arg2), msg.sender, arg4, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidateAllowed error'
                    else:
                        return 0
                else:
                    return 0
            if 277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 0 / 0 / ext_call.return_data[0] != 277750 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
            return (277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 10^9)
        if ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18 != ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if 0 / ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 0 / ext_call.return_data[0]
        if not ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0]:
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
                else:
                    return 0
            else:
                return 0
        if 277750 * 3600 * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] / ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] != 277750 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if not sub_b48ce8c0[address(arg3)]:
            require ext_code.size(arg1)
            staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] / 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'liquidateAllowed error'
        return (277750 * 3600 * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] / 10^9)
    if ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 27],
                    mem[224 len 4]
    if not ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(arg2)
        staticcall arg2.getAccountSnapshot(address arg1) with:
                gas gas_remaining wei
               args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not ext_call.return_data[32]:
            if 0 / ext_call.return_data[0] <= 0:
                if not ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                    if not sub_b48ce8c0[address(arg3)]:
                        require ext_code.size(arg1)
                        staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                                gas gas_remaining wei
                               args 0, 0, address(arg2), msg.sender, arg4, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'liquidateAllowed error'
                        else:
                            return 0
                    else:
                        return 0
                if 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18 != 277750 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
                if not sub_b48ce8c0[address(arg3)]:
                    require ext_code.size(arg1)
                    staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidateAllowed error'
                return (277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9)
            if ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                if 0 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
            if 0 / ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / ext_call.return_data[0]
            if not 0 / 0 / ext_call.return_data[0]:
                if not sub_b48ce8c0[address(arg3)]:
                    require ext_code.size(arg1)
                    staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args 0, 0, address(arg2), msg.sender, arg4, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidateAllowed error'
                    else:
                        return 0
                else:
                    return 0
            if 277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 0 / 0 / ext_call.return_data[0] != 277750 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
            return (277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 10^9)
        if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if 0 / ext_call.return_data[0] <= ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
            if not ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                if not sub_b48ce8c0[address(arg3)]:
                    require ext_code.size(arg1)
                    staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args 0, 0, address(arg2), msg.sender, arg4, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidateAllowed error'
                    else:
                        return 0
                else:
                    return 0
            if 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18 != 277750 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
            return (277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9)
        if not ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
            if 0 / ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / ext_call.return_data[0]
            if not 0 / 0 / ext_call.return_data[0]:
                if not sub_b48ce8c0[address(arg3)]:
                    require ext_code.size(arg1)
                    staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args 0, 0, address(arg2), msg.sender, arg4, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidateAllowed error'
                    else:
                        return 0
                else:
                    return 0
            if 277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 0 / 0 / ext_call.return_data[0] != 277750 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
            return (277750 * 3600 * 0 / 0 / ext_call.return_data[0] / 10^9)
        if ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18 != ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if 0 / ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 0 / ext_call.return_data[0]
        if not ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0]:
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
                else:
                    return 0
            else:
                return 0
        if 277750 * 3600 * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] / ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] != 277750 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if not sub_b48ce8c0[address(arg3)]:
            require ext_code.size(arg1)
            staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] / 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'liquidateAllowed error'
        return (277750 * 3600 * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 0 / ext_call.return_data[0] / 10^9)
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 27],
                    mem[224 len 4]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not ext_call.return_data[32]:
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] <= 0:
            if not ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                if not sub_b48ce8c0[address(arg3)]:
                    require ext_code.size(arg1)
                    staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args 0, 0, address(arg2), msg.sender, arg4, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidateAllowed error'
                    else:
                        return 0
                else:
                    return 0
            if 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18 != 277750 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
            return (277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9)
        if ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
            if 0 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
                else:
                    return 0
            else:
                return 0
        if 277750 * 3600 * 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] != 277750 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if not sub_b48ce8c0[address(arg3)]:
            require ext_code.size(arg1)
            staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] / 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'liquidateAllowed error'
        return (277750 * 3600 * 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] / 10^9)
    if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[96]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 27],
                    mem[224 len 4]
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] <= ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
        if not ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
                else:
                    return 0
            else:
                return 0
        if 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18 != 277750 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if not sub_b48ce8c0[address(arg3)]:
            require ext_code.size(arg1)
            staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'liquidateAllowed error'
        return (277750 * 3600 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^9)
    if not ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
            if not sub_b48ce8c0[address(arg3)]:
                require ext_code.size(arg1)
                staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args 0, 0, address(arg2), msg.sender, arg4, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidateAllowed error'
                else:
                    return 0
            else:
                return 0
        if 277750 * 3600 * 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] != 277750 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if not sub_b48ce8c0[address(arg3)]:
            require ext_code.size(arg1)
            staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] / 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'liquidateAllowed error'
        return (277750 * 3600 * 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] / 10^9)
    if ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[64] * ext_call.return_data[0] / 10^18 != ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 27],
                    mem[224 len 4]
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]
    if not ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
        if not sub_b48ce8c0[address(arg3)]:
            require ext_code.size(arg1)
            staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), msg.sender, arg4, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'liquidateAllowed error'
            else:
                return 0
        else:
            return 0
    if 277750 * 3600 * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] / ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] != 277750 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 27],
                    mem[224 len 4]
    if not sub_b48ce8c0[address(arg3)]:
        require ext_code.size(arg1)
        staticcall arg1.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
                gas gas_remaining wei
               args 0, 0, address(arg2), msg.sender, arg4, 277750 * 3600 * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] / 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidateAllowed error'
    return (277750 * 3600 * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[64] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] / 10^9)
}



}
