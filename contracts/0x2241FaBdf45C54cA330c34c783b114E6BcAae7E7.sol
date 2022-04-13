contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 liquidityLockDivisor;
address owner;
address airdropAddr;
array of struct sub_37ddc187;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_37ddc187(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_37ddc187.length
    return sub_37ddc187[arg1].field_0, sub_37ddc187[arg1].field_256
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function lockedSupply() {
    return balanceOf[address(this.address)]
}

function liquidityLockDivisor() {
    return liquidityLockDivisor
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)].field_0
}

function airdropAddr() {
    return airdropAddr
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_74bef28c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityLockDivisor = arg1
}

function sub_322a54df(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b172b211(?) {
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x3045524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_f3288fe3(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function sub_b1973b7e(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if airdropAddr:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x6547686f7374546f6b656e3a3a7072657061726541697264726f703a2041697264726f70206164647265737320616c7265616479207365747465,
                    mem[222 len 6]
    airdropAddr = arg1
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function sub_3f8f133e(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x30476f757665726e616e6365416e644c6f636b656445524332303a3a6275726e4c69717569646974793a206275726e20616d6f756e742063616e6e6f7420626520,
                    mem[229 len 31]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit BurnLiquidity(ext_call.return_data[0]);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)].field_0 + arg2 < allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function sub_66526756(?) {
    if sub_37ddc187.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x7447686f7374546f6b656e3a3a6275726e4c6971756964697479466f72416c6c4465783a204e656564206d6f7265207468616e207a65726f206465,
                    mem[223 len 5]
    idx = 0
    while idx < sub_37ddc187.length:
        mem[0] = 9
        mem[100] = this.address
        require ext_code.size(sub_37ddc187[idx].field_256)
        staticcall sub_37ddc187[idx].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require idx < sub_37ddc187.length
            mem[0] = 9
            require ext_code.size(sub_37ddc187[idx].field_256)
            staticcall sub_37ddc187[idx].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            65,
                            0x30476f757665726e616e6365416e644c6f636b656445524332303a3a6275726e4c69717569646974793a206275726e20616d6f756e742063616e6e6f7420626520,
                            mem[229 len 31]
            mem[100] = 0
            mem[132] = ext_call.return_data[0]
            require ext_code.size(sub_37ddc187[idx].field_256)
            call sub_37ddc187[idx].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = ext_call.return_data[0]
            emit BurnLiquidity(ext_call.return_data[0]);
        idx = idx + 1
        continue 
}

function sub_9f81c687(?) {
    idx = 0
    while idx < sub_37ddc187.length:
        require ext_code.size(sub_37ddc187[idx].field_256)
        staticcall sub_37ddc187[idx].field_256.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = 0
        require ext_code.size(sub_37ddc187[idx].field_256)
        staticcall sub_37ddc187[idx].field_256.0x70a08231 with:
                gas gas_remaining wei
               args 0
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            mem[0] = sub_37ddc187[idx].field_256
            mem[32] = 0
            if balanceOf[stor9[idx].field_256]:
                require balanceOf[stor9[idx].field_256]
                if balanceOf[stor9[idx].field_256] * 0 / ext_call.return_data[0] / balanceOf[stor9[idx].field_256] != 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        else:
            require ext_call.return_data[0]
            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                revert with 0, 32, 33, 0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            mem[0] = sub_37ddc187[idx].field_256
            mem[32] = 0
            if balanceOf[stor9[idx].field_256]:
                require balanceOf[stor9[idx].field_256]
                if balanceOf[stor9[idx].field_256] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0] / balanceOf[stor9[idx].field_256] != 10^12 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        idx = idx + 1
        continue 
    return 0
}

function sub_f95fd1f8(?) {
    idx = 0
    while idx < sub_37ddc187.length:
        require ext_code.size(sub_37ddc187[idx].field_256)
        staticcall sub_37ddc187[idx].field_256.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(sub_37ddc187[idx].field_256)
        staticcall sub_37ddc187[idx].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            mem[0] = sub_37ddc187[idx].field_256
            mem[32] = 0
            if balanceOf[stor9[idx].field_256]:
                require balanceOf[stor9[idx].field_256]
                if balanceOf[stor9[idx].field_256] * 0 / ext_call.return_data[0] / balanceOf[stor9[idx].field_256] != 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        else:
            require ext_call.return_data[0]
            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                revert with 0, 32, 33, 0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            mem[0] = sub_37ddc187[idx].field_256
            mem[32] = 0
            if balanceOf[stor9[idx].field_256]:
                require balanceOf[stor9[idx].field_256]
                if balanceOf[stor9[idx].field_256] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0] / balanceOf[stor9[idx].field_256] != 10^12 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        idx = idx + 1
        continue 
    return 0
}

function sub_db86bb6a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not balanceOf[address(arg1)]:
            return 0
        require balanceOf[address(arg1)]
        if balanceOf[address(arg1)] * 0 / ext_call.return_data[0] / balanceOf[address(arg1)] != 0 / ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (balanceOf[address(arg1)] * 0 / ext_call.return_data[0] / 10^12)
    require ext_call.return_data[0]
    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not balanceOf[address(arg1)]:
        return 0
    require balanceOf[address(arg1)]
    if balanceOf[address(arg1)] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0] / balanceOf[address(arg1)] != 10^12 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (balanceOf[address(arg1)] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0] / 10^12)
}

function sub_40e96472(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not balanceOf[address(arg1)]:
            return 0
        require balanceOf[address(arg1)]
        if balanceOf[address(arg1)] * 0 / ext_call.return_data[0] / balanceOf[address(arg1)] != 0 / ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (balanceOf[address(arg1)] * 0 / ext_call.return_data[0] / 10^12)
    require ext_call.return_data[0]
    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not balanceOf[address(arg1)]:
        return 0
    require balanceOf[address(arg1)]
    if balanceOf[address(arg1)] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0] / balanceOf[address(arg1)] != 10^12 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (balanceOf[address(arg1)] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0] / 10^12)
}

function sub_caab6efd(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not balanceOf[address(arg1)]:
            return 0
        require balanceOf[address(arg1)]
        if balanceOf[address(arg1)] * 0 / ext_call.return_data[0] / balanceOf[address(arg1)] != 0 / ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (balanceOf[address(arg1)] * 0 / ext_call.return_data[0] / 10^12)
    require 2 * ext_call.return_data[0]
    if 2 * 10^12 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not balanceOf[address(arg1)]:
        return 0
    require balanceOf[address(arg1)]
    if balanceOf[address(arg1)] * 2 * 10^12 * ext_call.return_data[0] / ext_call.return_data[0] / balanceOf[address(arg1)] != 2 * 10^12 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (balanceOf[address(arg1)] * 2 * 10^12 * ext_call.return_data[0] / ext_call.return_data[0] / 10^12)
}

function sub_acd36a5a(?) {
    idx = 0
    while idx < sub_37ddc187.length:
        require ext_code.size(sub_37ddc187[idx].field_256)
        staticcall sub_37ddc187[idx].field_256.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_37ddc187[idx].field_256)
        staticcall sub_37ddc187[idx].field_256.0x70a08231 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(sub_37ddc187[idx].field_256)
        staticcall sub_37ddc187[idx].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not uint255(ext_call.return_data[0]):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            mem[0] = sub_37ddc187[idx].field_256
            mem[32] = 0
            if balanceOf[stor9[idx].field_256]:
                require balanceOf[stor9[idx].field_256]
                if balanceOf[stor9[idx].field_256] * 0 / ext_call.return_data[0] / balanceOf[stor9[idx].field_256] != 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        else:
            require 2 * ext_call.return_data[0]
            if 2 * 10^12 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^12:
                revert with 0, 32, 33, 0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            mem[0] = sub_37ddc187[idx].field_256
            mem[32] = 0
            if balanceOf[stor9[idx].field_256]:
                require balanceOf[stor9[idx].field_256]
                if balanceOf[stor9[idx].field_256] * 2 * 10^12 * ext_call.return_data[0] / ext_call.return_data[0] / balanceOf[stor9[idx].field_256] != 2 * 10^12 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x78536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        idx = idx + 1
        continue 
    return 0
}

function sub_3b8d55ad(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6447686f7374546f6b656e3a3a6164644465783a20726f757465722063616e2774206265207a65726f20616464726573,
                    mem[212 len 16]
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x65466163746f72792063616e2774206265207a65726f20616464726573732e20476976656e20726f75746572206d6179206e6f742065786973,
                    mem[221 len 7]
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).createPair(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not this.address:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if balanceOf[address(this.address)] + arg2 < balanceOf[address(this.address)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(this.address)] += arg2
        emit Transfer(arg2, 0, this.address);
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        allowance[address(this.address)][address(arg1)].field_0 = arg2
        emit Approval(arg2, this.address, arg1);
        require ext_code.size(arg1)
        call arg1.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 0, arg2, 0, 0, address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
    sub_37ddc187.length++
    sub_37ddc187[sub_37ddc187.length].field_0 = arg1
    sub_37ddc187[sub_37ddc187.length].field_256 = address(ext_call.return_data[0])
    return address(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not liquidityLockDivisor:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x7945524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if msg.sender == this.address:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x7945524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if liquidityLockDivisor <= 0:
                revert with 0, 'SafeMath: division by zero'
            require liquidityLockDivisor
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x7945524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 / liquidityLockDivisor > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2 / liquidityLockDivisor
            if balanceOf[address(this.address)] + (arg2 / liquidityLockDivisor) < balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] += arg2 / liquidityLockDivisor
            emit Transfer((arg2 / liquidityLockDivisor), msg.sender, this.address);
            if arg2 / liquidityLockDivisor > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
            if not arg1:
                revert with 0, 32, 35, 0x7945524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
            if arg2 - (arg2 / liquidityLockDivisor) > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[262 len 26],
                            mem[314 len 6]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / liquidityLockDivisor)
            if balanceOf[address(arg1)] + arg2 - (arg2 / liquidityLockDivisor) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / liquidityLockDivisor)
            emit Transfer((arg2 - (arg2 / liquidityLockDivisor)), msg.sender, arg1);
    return 1
}

function sub_9935babc(?) payable {
    mem[64] = 96
    require not msg.value
    liquidityLockDivisor = 0
    mem[0] = this.address
    mem[32] = 0
    if not balanceOf[address(this.address)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0xfe47686f7374546f6b656e3a3a6c6f636b4c6971756964697479466f72416c6c4465783a2043616e2774206c6f636b2077697468207a65726f206c6f636b656420737570706c,
                    mem[234 len 26]
    if sub_37ddc187.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x7847686f7374546f6b656e3a3a6c6f636b4c6971756964697479466f72416c6c4465783a204e656564206d6f7265207468616e207a65726f206465,
                    mem[223 len 5]
    require sub_37ddc187.length
    idx = 0
    while idx < sub_37ddc187.length:
        mem[0] = this.address
        mem[32] = 0
        if balanceOf[address(this.address)] / sub_37ddc187.length > balanceOf[address(this.address)]:
            revert with 0, 
                        32,
                        82,
                        0x73476f757665726e616e6365416e644c6f636b656445524332303a3a6c6f636b4c69717569646974793a206c6f636b20616d6f756e7420686967686572207468616e206c6f636b61626c652062616c616e63,
                        mem[mem[64] + 150 len 14]
        if not balanceOf[address(this.address)] / sub_37ddc187.length:
            revert with 0, 
                        32,
                        65,
                        0x65476f757665726e616e6365416e644c6f636b656445524332303a3a6c6f636b4c69717569646974793a206c6f636b20616d6f756e742063616e6e6f7420626520,
                        mem[mem[64] + 133 len 31]
        if balanceOf[address(this.address)] / sub_37ddc187.length / 2 > balanceOf[address(this.address)] / sub_37ddc187.length:
            revert with 0, 'SafeMath: subtraction overflow'
        _60 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_60]
        mem[_60 + 32] = this.address
        require ext_code.size(sub_37ddc187[idx].field_0)
        staticcall sub_37ddc187[idx].field_0.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < mem[_60]
        mem[_60 + 64] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[_60 + 200 len 28]
        if not sub_37ddc187[idx].field_0:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[_60 + 198 len 30]
        mem[0] = sub_37ddc187[idx].field_0
        mem[32] = sha3(address(this.address), 1)
        allowance[address(this.address)][stor9[idx].field_0].field_0 = balanceOf[address(this.address)] / sub_37ddc187.length / 2
        allowance[address(this.address)][stor9[idx].field_0].field_255 = 0
        emit Approval((balanceOf[address(this.address)] / sub_37ddc187.length / 2), this.address, sub_37ddc187[idx].field_0);
        mem[_60 + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[_60 + 100] = balanceOf[address(this.address)] / sub_37ddc187.length / 2
        mem[_60 + 132] = 0
        mem[_60 + 196] = this.address
        mem[_60 + 228] = block.timestamp
        mem[_60 + 164] = 160
        mem[_60 + 260] = mem[_60]
        s = 0
        while s < 32 * mem[_60]:
            mem[_60 + s + 292] = mem[_60 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(sub_37ddc187[idx].field_0)
        call sub_37ddc187[idx].field_0.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args Mask(255, 1, balanceOf[address(this.address)] / sub_37ddc187.length), 0, 160, address(this.address), block.timestamp, mem[_60 + 260 len (32 * mem[_60]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow'
        if not this.address:
            revert with 0, 'sERC20: approve from the zero addresddres'
        if not sub_37ddc187[idx].field_0:
            revert with 0, 'sERC20: approve to the zero addresddres'
        mem[0] = sub_37ddc187[idx].field_0
        mem[32] = sha3(address(this.address), 1)
        allowance[address(this.address)][stor9[idx].field_0].field_0 = (balanceOf[address(this.address)] / sub_37ddc187.length) - (balanceOf[address(this.address)] / sub_37ddc187.length / 2)
        emit Approval(((balanceOf[address(this.address)] / sub_37ddc187.length) - (balanceOf[address(this.address)] / sub_37ddc187.length / 2)), this.address, sub_37ddc187[idx].field_0);
        mem[_60 + 164] = 0
        mem[_60 + 196] = 0
        mem[_60 + 228] = this.address
        mem[_60 + 260] = block.timestamp
        require ext_code.size(sub_37ddc187[idx].field_0)
        call sub_37ddc187[idx].field_0.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
             gas gas_remaining wei
            args address(this.address), (balanceOf[address(this.address)] / sub_37ddc187.length) - (balanceOf[address(this.address)] / sub_37ddc187.length / 2), 0, 0, address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[_60 + 96] = (balanceOf[address(this.address)] / sub_37ddc187.length) - (balanceOf[address(this.address)] / sub_37ddc187.length / 2)
        mem[_60 + 128] = 0
        mem[_60 + 160] = sub_37ddc187[idx].field_0
        emit 0xe14ab77c: (balanceOf[address(this.address)] / sub_37ddc187.length) - (balanceOf[address(this.address)] / sub_37ddc187.length / 2), 0, sub_37ddc187[idx].field_0
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not liquidityLockDivisor:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x7945524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if arg1 == this.address:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x7945524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if liquidityLockDivisor <= 0:
                revert with 0, 'SafeMath: division by zero'
            require liquidityLockDivisor
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x7945524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 / liquidityLockDivisor > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3 / liquidityLockDivisor
            if balanceOf[address(this.address)] + (arg3 / liquidityLockDivisor) < balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] += arg3 / liquidityLockDivisor
            emit Transfer((arg3 / liquidityLockDivisor), arg1, this.address);
            if arg3 / liquidityLockDivisor > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
            if not arg2:
                revert with 0, 32, 35, 0x7945524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
            if arg3 - (arg3 / liquidityLockDivisor) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[262 len 26],
                            mem[314 len 6]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / liquidityLockDivisor)
            if balanceOf[address(arg2)] + arg3 - (arg3 / liquidityLockDivisor) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / liquidityLockDivisor)
            emit Transfer((arg3 - (arg3 / liquidityLockDivisor)), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[360 len 24],
                            mem[408 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
    return 1
}



}
