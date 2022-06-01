contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const getName = Array(len=35, data=0xfe4672656e7346692053706f6f6b7953776170204c50204661726d2053747261746567, mem[163 len 29], mem[221 len 3])

const boo = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe

const router = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const masterchef = 0x2b2929e785374c651a81a63878ab22742656dcdd

const FEE_DENOMINATOR = 10000


address wantAddress;
address tokenAAddress;
address tokenBAddress;
uint256 sub_ac5f1689;
array of address sub_c3a2bbaa;
address owner;
uint32 stor6;
address controllerAddress;
uint256 stor6;
address strategistAddress;
uint256 performanceFee;
uint256 strategistReward;
uint256 withdrawalFee;
uint256 harvesterReward;
uint8 paused;

function tokenA() {
    return tokenAAddress
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function paused() {
    return bool(paused)
}

function tokenB() {
    return tokenBAddress
}

function strategistReward() {
    return strategistReward
}

function performanceFee() {
    return performanceFee
}

function withdrawalFee() {
    return withdrawalFee
}

function owner() {
    return owner
}

function sub_ac5f1689(?) {
    return sub_ac5f1689
}

function sub_c3a2bbaa(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_c3a2bbaa.length
    return sub_c3a2bbaa[arg1]
}

function harvesterReward() {
    return harvesterReward
}

function controller() {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    owner = arg1
}

function setPID(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    sub_ac5f1689 = arg1
}

function setWithdrawalFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    withdrawalFee = arg1
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    strategistAddress = arg1
}

function setPerformanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    performanceFee = arg1
}

function setHarvesterReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    harvesterReward = arg1
}

function setStrategistReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    strategistReward = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    address(controllerAddress) = arg1
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
    call 0x2b2929e785374c651a81a63878ab22742656dcdd.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args sub_ac5f1689
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    paused = 1
}

function balanceOfStakedWant() {
    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
    staticcall 0x2b2929e785374c651a81a63878ab22742656dcdd.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_ac5f1689, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function balanceOf() {
    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
    staticcall 0x2b2929e785374c651a81a63878ab22742656dcdd.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_ac5f1689, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function setBooToTokenAPath(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'not owner'
    sub_c3a2bbaa.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_c3a2bbaa.length > idx:
            sub_c3a2bbaa[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            sub_c3a2bbaa[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_c3a2bbaa.length > idx:
            sub_c3a2bbaa[idx] = 0
            idx = idx + 1
            continue 
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if wantAddress == arg1:
        revert with 0, 'want'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor6)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor6):
            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    return ext_call.return_data[0]
}

function executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 'not owner'
    if 0 == arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        call arg1 with:
           funct Mask(32, -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len arg4.length - 4]
        if return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            61,
                            0x7754696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564,
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 290 len 3]
            return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        if not ext_call.success:
            revert with 0, 
                        32,
                        61,
                        0x7754696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 289 len 3]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 32
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
                   mem[ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) + -arg4.length + 32],
                   Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
        return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
               mem[ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) + -arg4.length + 32],
               Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
               mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(32, 224, sha3(arg3[all]))
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 196] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 196])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg4.length + 4
    mem[64] = arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196
    _73 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 228 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
    call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 200 len _73 - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        61,
                        0x7754696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564,
                        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 325 len 3]
        return Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with 0, 
                    32,
                    61,
                    0x7754696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564,
                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 326 len 3]
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function withdrawAll() {
    if msg.sender == address(controllerAddress):
        require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
        call 0x2b2929e785374c651a81a63878ab22742656dcdd.emergencyWithdraw(uint256 arg1) with:
             gas gas_remaining wei
            args sub_ac5f1689
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        mem[132] = ext_call.return_data[12 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        call wantAddress.mem[160 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], Mask(224, 32, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]) >> 32, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not 0, mem[132 len 28]:
                revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).rewards() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAAddress)
            staticcall tokenAAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(tokenAAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[296 len 64] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call tokenAAddress with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not 0, mem[132 len 28]:
                    revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
            else:
                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[328]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 407 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).rewards() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAAddress)
            staticcall tokenAAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(tokenAAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 297 len 64] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call tokenAAddress with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not 0, mem[132 len 28]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
            else:
                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 329]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 408 len 22]
        return ext_call.return_data[0]
    if owner != msg.sender:
        revert with 0, '!authorized'
    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
    call 0x2b2929e785374c651a81a63878ab22742656dcdd.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args sub_ac5f1689
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).vaults(address arg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!vault'
    mem[132] = ext_call.return_data[12 len 20]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
    call wantAddress.mem[160 len 4] with:
         gas gas_remaining wei
        args ext_call.return_data[0], Mask(224, 32, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]) >> 32, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not 0, mem[132 len 28]:
            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).rewards() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAAddress)
        staticcall tokenAAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[296 len 64] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
        call tokenAAddress with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not 0, mem[132 len 28]:
                revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
        else:
            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[328]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
        return ext_call.return_data[0]
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[228]:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 307 len 22]
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).rewards() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(tokenAAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 297 len 64] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
    mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
    call tokenAAddress with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not 0, mem[132 len 28]:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 407 len 22]
        return ext_call.return_data[0]
    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    'SafeERC20: low-level call failed',
                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 329]:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    return ext_call.return_data[0], 
           mem[(2 * ceil32(return_data.size)) + 330 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'not owner'
    paused = 0
    if not paused:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_ac5f1689, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 0, 0
            call wantAddress.0x2656dcdd with:
                 gas gas_remaining wei
                args 0, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                    revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                if ext_call.return_data[0]:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, 0x2b2929e785374c651a81a63878ab22742656dcdd
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[318 len 10]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[296 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 643226845, ext_call.return_data[0 len 28]
                call wantAddress.0x2656dcdd with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
                else:
                    mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[328]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 407 len 22]
                if ext_call.return_data[0] > 0:
                    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                    call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_ac5f1689, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 643226845, ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
                        call wantAddress.0x2656dcdd with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 407 len 22]
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                                call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_ac5f1689, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                                call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_ac5f1689, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, 0x2b2929e785374c651a81a63878ab22742656dcdd
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 319 len 10]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 0, ext_call.return_data[0 len 28]
                        call wantAddress.0x2656dcdd with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 407 len 22]
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 408 len 22]
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                            call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_ac5f1689, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 307 len 22]
                    if ext_call.return_data[0]:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, 0x2b2929e785374c651a81a63878ab22742656dcdd
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 319 len 10]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 643226845, ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
                    call wantAddress.0x2656dcdd with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 407 len 22]
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                            call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_ac5f1689, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 329]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                            call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_ac5f1689, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not arg1:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).rewards() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[196] = ext_call.return_data[12 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[260 len 64] = 0, ext_call.return_data[12 len 20], 0
            call wantAddress.mem[224 len 4] with:
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, ext_call.return_data[12 len 20], 0) >> 32, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address arg1) with:
                    gas gas_remaining wei
                   args wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
            call wantAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).rewards() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[196] = ext_call.return_data[12 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
            call wantAddress.mem[224 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, withdrawalFee * arg1 / 10000) << 224, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address arg1) with:
                    gas gas_remaining wei
                   args wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                revert with 0, '!vault'
            if withdrawalFee * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
            call wantAddress with:
                 gas gas_remaining wei
                args arg1 - (withdrawalFee * arg1 / 10000), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32) >> 32, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
        call 0x2b2929e785374c651a81a63878ab22742656dcdd.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_ac5f1689, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 < arg1 - ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).rewards() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[260] = ext_call.return_data[12 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = 0, ext_call.return_data[12 len 20], 0
            call wantAddress.mem[288 len 4] with:
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, ext_call.return_data[12 len 20], 0) >> 32, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address arg1) with:
                    gas gas_remaining wei
                   args wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 489 len 64] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
            call wantAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 553 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 521]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).rewards() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[260] = ext_call.return_data[12 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
            call wantAddress.mem[288 len 4] with:
                 gas gas_remaining wei
                args withdrawalFee * arg1 / 10000, Mask(224, 32, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32) >> 32, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address arg1) with:
                        gas gas_remaining wei
                       args wantAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if withdrawalFee * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                call wantAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
            else:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address arg1) with:
                        gas gas_remaining wei
                       args wantAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if withdrawalFee * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                call wantAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function deposit() {
    if not paused:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_ac5f1689, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 0, 0
            call wantAddress.0x2656dcdd with:
                 gas gas_remaining wei
                args 0, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                    revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                if not ext_call.return_data[0]:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[296 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 0, ext_call.return_data[0 len 28]
                else:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, 0x2b2929e785374c651a81a63878ab22742656dcdd
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[318 len 10]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[296 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 643226845, ext_call.return_data[0 len 28]
                call wantAddress.0x2656dcdd with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
                else:
                    mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[328]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 407 len 22]
                if ext_call.return_data[0] > 0:
                    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                    call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_ac5f1689, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 643226845, ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
                        call wantAddress.0x2656dcdd with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 407 len 22]
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                                call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_ac5f1689, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                                call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_ac5f1689, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, 0x2b2929e785374c651a81a63878ab22742656dcdd
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 319 len 10]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 0, ext_call.return_data[0 len 28]
                        call wantAddress.0x2656dcdd with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 407 len 22]
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 408 len 22]
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                            call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_ac5f1689, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 307 len 22]
                    if not ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 0, ext_call.return_data[0 len 28]
                        call wantAddress.0x2656dcdd with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 407 len 22]
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 408 len 22]
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                            call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_ac5f1689, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, 0x2b2929e785374c651a81a63878ab22742656dcdd
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 319 len 10]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638, 643226845, ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
                        call wantAddress.0x2656dcdd with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address arg1, uint256 arg2), 0x2b2929e785374c651a81a638:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 407 len 22]
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                                call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_ac5f1689, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
                                call 0x2b2929e785374c651a81a63878ab22742656dcdd.deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_ac5f1689, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}



}
