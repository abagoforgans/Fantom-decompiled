contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - panic()
#
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 paused; offset 160
address owner;
address keeperAddress;
address strategistAddress;
uint32 stor3;
address unirouterAddress;
uint256 stor3;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
address gaspriceAddress;
address wbnbAddress;
address cakeAddress;
address wantAddress;
uint32 stor13;
address lpToken0Address;
address lpToken1Address;
uint32 stor15;
address masterchefAddress;
uint256 stor15;
uint256 poolId;
array of address cakeToWbnbRoute;
array of struct cakeToLp0Route;
array of struct cakeToLp1Route;

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return address(unirouterAddress)
}

function poolId() payable {
    return poolId
}

function cakeToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < cakeToLp0Route.length
    return cakeToLp0Route[arg1].field_0
}

function paused() payable {
    return bool(paused)
}

function lpToken0() payable {
    return address(lpToken0Address)
}

function gasprice() payable {
    return gaspriceAddress
}

function lpToken1() payable {
    return lpToken1Address
}

function withdrawalFee() payable {
    return withdrawalFee
}

function wbnb() payable {
    return wbnbAddress
}

function owner() payable {
    return owner
}

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function cakeToWbnbRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < cakeToWbnbRoute.length
    return cakeToWbnbRoute[arg1]
}

function keeper() payable {
    return keeperAddress
}

function cakeToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < cakeToLp1Route.length
    return cakeToLp1Route[arg1].field_0
}

function beefyFee() payable {
    return beefyFee
}

function cake() payable {
    return cakeAddress
}

function masterchef() payable {
    return address(masterchefAddress)
}

function vault() payable {
    return address(vaultAddress)
}

function beforeDeposit() payable {
  stop
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

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(unirouterAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beefyFeeRecipientAddress = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 888
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(address(masterchefAddress))
    staticcall address(masterchefAddress).userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(masterchefAddress))
        call address(masterchefAddress).deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(address(masterchefAddress))
    staticcall address(masterchefAddress).userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addLiquidity() payable {
    require ext_code.size(cakeAddress)
    staticcall cakeAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cakeAddress == address(lpToken0Address):
        if cakeAddress == lpToken1Address:
            require ext_code.size(address(lpToken0Address))
            staticcall address(lpToken0Address).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(lpToken1Address)
            staticcall lpToken1Address.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor13), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
        else:
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = ext_call.return_data[0] / 2
            mem[132] = 0
            mem[196] = this.address
            mem[228] = block.timestamp
            mem[164] = 160
            mem[260] = cakeToLp1Route.length
            if not cakeToLp1Route.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length
            else:
                mem[0] = 19
                mem[292] = address(cakeToLp1Route.field_0)
                idx = 292
                s = 0
                while (32 * cakeToLp1Route.length) + 292 > idx + 32:
                    mem[idx + 32] = cakeToLp1Route[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length, mem[292 len 32 * cakeToLp1Route.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 <= return_data.size
            require ext_code.size(address(lpToken0Address))
            staticcall address(lpToken0Address).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(lpToken1Address)
            staticcall lpToken1Address.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(lpToken0Address), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
    else:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = ext_call.return_data[0] / 2
        mem[132] = 0
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = cakeToLp0Route.length
        if not cakeToLp0Route.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp0Route.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _19 = mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
            _29 = mem[_19 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_19 + 96])] = mem[_19 + 128 len floor32(mem[_19 + 96])]
            if cakeAddress != lpToken1Address:
                mem[(32 * _29) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _29) + ceil32(return_data.size) + 132] = ext_call.return_data[0] / 2
                mem[(32 * _29) + ceil32(return_data.size) + 164] = 0
                mem[(32 * _29) + ceil32(return_data.size) + 228] = this.address
                mem[(32 * _29) + ceil32(return_data.size) + 260] = block.timestamp
                mem[(32 * _29) + ceil32(return_data.size) + 196] = 160
                mem[(32 * _29) + ceil32(return_data.size) + 292] = cakeToLp1Route.length
                if not cakeToLp1Route.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length
                else:
                    mem[0] = 19
                    mem[(32 * _29) + ceil32(return_data.size) + 324] = address(cakeToLp1Route.field_0)
                    idx = (32 * _29) + ceil32(return_data.size) + 324
                    s = 0
                    while (32 * _29) + ceil32(return_data.size) + (32 * cakeToLp1Route.length) + 324 > idx + 32:
                        mem[idx + 32] = cakeToLp1Route[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length, mem[(32 * _29) + ceil32(return_data.size) + 324 len 32 * cakeToLp1Route.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _29) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _29) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                require mem[(32 * _29) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _29) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _29) + ceil32(return_data.size) + mem[(32 * _29) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] <= 4294967296 and mem[(32 * _29) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _29) + ceil32(return_data.size) + mem[(32 * _29) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 32 <= return_data.size
        else:
            mem[0] = 18
            mem[292] = address(cakeToLp0Route.field_0)
            idx = 292
            s = 0
            while (32 * cakeToLp0Route.length) + 292 > idx + 32:
                mem[idx + 32] = cakeToLp0Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp0Route.length, mem[292 len 32 * cakeToLp0Route.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _129 = mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
            _138 = mem[_129 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_129 + 96])] = mem[_129 + 128 len floor32(mem[_129 + 96])]
            if cakeAddress != lpToken1Address:
                mem[(32 * _138) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _138) + ceil32(return_data.size) + 132] = ext_call.return_data[0] / 2
                mem[(32 * _138) + ceil32(return_data.size) + 164] = 0
                mem[(32 * _138) + ceil32(return_data.size) + 228] = this.address
                mem[(32 * _138) + ceil32(return_data.size) + 260] = block.timestamp
                mem[(32 * _138) + ceil32(return_data.size) + 196] = 160
                mem[(32 * _138) + ceil32(return_data.size) + 292] = cakeToLp1Route.length
                if not cakeToLp1Route.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length
                else:
                    mem[0] = 19
                    mem[(32 * _138) + ceil32(return_data.size) + 324] = address(cakeToLp1Route.field_0)
                    idx = (32 * _138) + ceil32(return_data.size) + 324
                    s = 0
                    while (32 * _138) + ceil32(return_data.size) + (32 * cakeToLp1Route.length) + 324 > idx + 32:
                        mem[idx + 32] = cakeToLp1Route[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length, mem[(32 * _138) + ceil32(return_data.size) + 324 len 32 * cakeToLp1Route.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _138) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _138) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                require mem[(32 * _138) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _138) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _138) + ceil32(return_data.size) + mem[(32 * _138) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] <= 4294967296 and mem[(32 * _138) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _138) + ceil32(return_data.size) + mem[(32 * _138) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 32 <= return_data.size
        require ext_code.size(address(lpToken0Address))
        staticcall address(lpToken0Address).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lpToken1Address)
        staticcall lpToken1Address.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(unirouterAddress))
        call address(unirouterAddress).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args address(lpToken0Address), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function harvest() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    require ext_code.size(gaspriceAddress)
    call gaspriceAddress.0x3de39c11 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.gasprice > ext_call.return_data[0]:
        revert with 0, 'gas is too high!'
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(cakeAddress)
    staticcall cakeAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cakeAddress == address(lpToken0Address):
        if cakeAddress == lpToken1Address:
            require ext_code.size(address(lpToken0Address))
            staticcall address(lpToken0Address).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(lpToken1Address)
            staticcall lpToken1Address.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor13), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
        else:
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = ext_call.return_data[0] / 2
            mem[132] = 0
            mem[196] = this.address
            mem[228] = block.timestamp
            mem[164] = 160
            mem[260] = cakeToLp1Route.length
            if not cakeToLp1Route.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length
            else:
                mem[0] = 19
                mem[292] = address(cakeToLp1Route.field_0)
                idx = 292
                s = 0
                while (32 * cakeToLp1Route.length) + 292 > idx + 32:
                    mem[idx + 32] = cakeToLp1Route[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length, mem[292 len 32 * cakeToLp1Route.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 <= return_data.size
            require ext_code.size(address(lpToken0Address))
            staticcall address(lpToken0Address).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(lpToken1Address)
            staticcall lpToken1Address.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(lpToken0Address), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
    else:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = ext_call.return_data[0] / 2
        mem[132] = 0
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = cakeToLp0Route.length
        if not cakeToLp0Route.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp0Route.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _31 = mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
            _41 = mem[_31 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_31 + 96])] = mem[_31 + 128 len floor32(mem[_31 + 96])]
            if cakeAddress != lpToken1Address:
                mem[(32 * _41) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _41) + ceil32(return_data.size) + 132] = ext_call.return_data[0] / 2
                mem[(32 * _41) + ceil32(return_data.size) + 164] = 0
                mem[(32 * _41) + ceil32(return_data.size) + 228] = this.address
                mem[(32 * _41) + ceil32(return_data.size) + 260] = block.timestamp
                mem[(32 * _41) + ceil32(return_data.size) + 196] = 160
                mem[(32 * _41) + ceil32(return_data.size) + 292] = cakeToLp1Route.length
                if not cakeToLp1Route.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length
                else:
                    mem[0] = 19
                    mem[(32 * _41) + ceil32(return_data.size) + 324] = address(cakeToLp1Route.field_0)
                    idx = (32 * _41) + ceil32(return_data.size) + 324
                    s = 0
                    while (32 * _41) + ceil32(return_data.size) + (32 * cakeToLp1Route.length) + 324 > idx + 32:
                        mem[idx + 32] = cakeToLp1Route[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length, mem[(32 * _41) + ceil32(return_data.size) + 324 len 32 * cakeToLp1Route.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _41) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _41) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                require mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _41) + ceil32(return_data.size) + mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] <= 4294967296 and mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _41) + ceil32(return_data.size) + mem[(32 * _41) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 32 <= return_data.size
        else:
            mem[0] = 18
            mem[292] = address(cakeToLp0Route.field_0)
            idx = 292
            s = 0
            while (32 * cakeToLp0Route.length) + 292 > idx + 32:
                mem[idx + 32] = cakeToLp0Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp0Route.length, mem[292 len 32 * cakeToLp0Route.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _211 = mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
            _220 = mem[_211 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_211 + 96])] = mem[_211 + 128 len floor32(mem[_211 + 96])]
            if cakeAddress != lpToken1Address:
                mem[(32 * _220) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _220) + ceil32(return_data.size) + 132] = ext_call.return_data[0] / 2
                mem[(32 * _220) + ceil32(return_data.size) + 164] = 0
                mem[(32 * _220) + ceil32(return_data.size) + 228] = this.address
                mem[(32 * _220) + ceil32(return_data.size) + 260] = block.timestamp
                mem[(32 * _220) + ceil32(return_data.size) + 196] = 160
                mem[(32 * _220) + ceil32(return_data.size) + 292] = cakeToLp1Route.length
                if not cakeToLp1Route.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length
                else:
                    mem[0] = 19
                    mem[(32 * _220) + ceil32(return_data.size) + 324] = address(cakeToLp1Route.field_0)
                    idx = (32 * _220) + ceil32(return_data.size) + 324
                    s = 0
                    while (32 * _220) + ceil32(return_data.size) + (32 * cakeToLp1Route.length) + 324 > idx + 32:
                        mem[idx + 32] = cakeToLp1Route[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, cakeToLp1Route.length, mem[(32 * _220) + ceil32(return_data.size) + 324 len 32 * cakeToLp1Route.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _220) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _220) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                require mem[(32 * _220) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _220) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _220) + ceil32(return_data.size) + mem[(32 * _220) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] <= 4294967296 and mem[(32 * _220) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _220) + ceil32(return_data.size) + mem[(32 * _220) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 32 <= return_data.size
        require ext_code.size(address(lpToken0Address))
        staticcall address(lpToken0Address).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lpToken1Address)
        staticcall lpToken1Address.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(unirouterAddress))
        call address(unirouterAddress).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args address(lpToken0Address), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(masterchefAddress))
        call address(masterchefAddress).deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit StratHarvest(msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(masterchefAddress))
        call address(masterchefAddress).withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if ext_call.return_data[0] <= arg1:
        if tx.origin == owner:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
            call wantAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if paused:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if not ext_call.return_data[0]:
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), 
                                        Mask(224, 0, stor4),
                                        uint32(stor4),
                                        ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
    else:
        if tx.origin == owner:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
            call wantAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if paused:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if not arg1:
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if withdrawalFee * arg1 / arg1 != withdrawalFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if withdrawalFee * arg1 / 10000 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000)
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
}

function pause() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
    call wantAddress with:
       funct uint32(stor15)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(cakeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
        call cakeAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if not ext_code.size(address(lpToken0Address)):
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
            call address(lpToken0Address) with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[858 len 26]
                if not ext_code.size(lpToken1Address):
                    revert with 0, 'Address: call to non-contract'
                mem[752 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
                call lpToken1Address with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[816 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                else:
                    mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[784]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(lpToken1Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
                call lpToken1Address with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if not ext_code.size(address(lpToken0Address)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[ceil32(return_data.size) + 681 len 4] = 0
            call address(lpToken0Address) with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(lpToken1Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
                call lpToken1Address with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if not ext_code.size(lpToken1Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call lpToken1Address with:
                   funct uint32(stor3), mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
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
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 531 len 26]
    if not ext_code.size(cakeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
    mem[ceil32(return_data.size) + 517 len 4] = 0
    call cakeAddress with:
       funct uint32(stor3)
         gas gas_remaining wei
        args 0, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 535 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 695 len 26]
        if not ext_code.size(address(lpToken0Address)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 589 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
        mem[ceil32(return_data.size) + 681 len 4] = 0
        call address(lpToken0Address) with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 653 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 699 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 859 len 26]
            if not ext_code.size(lpToken1Address):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 753 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
            call lpToken1Address with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 817 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 863 len 22]
            else:
                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 785]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 621]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 860 len 26]
            if not ext_code.size(lpToken1Address):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
            call lpToken1Address with:
               funct uint32(stor3), mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + 696 len 26]
    if not ext_code.size(address(lpToken0Address)):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
    call address(lpToken0Address) with:
       funct uint32(stor3), mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
         gas gas_remaining wei
        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + 860 len 26]
        if not ext_code.size(lpToken1Address):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
        call lpToken1Address with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + 818 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
        else:
            mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 786]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
    if not ext_code.size(lpToken1Address):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
    call lpToken1Address with:
       funct uint32(stor3)
         gas gas_remaining wei
        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor15), uint32(stor15), 0
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor15):
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
    require return_data.size >= 32
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
    mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 760] = 32
    mem[(4 * ceil32(return_data.size)) + 792] = 42
    mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (4 * ceil32(return_data.size)) + 756
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
