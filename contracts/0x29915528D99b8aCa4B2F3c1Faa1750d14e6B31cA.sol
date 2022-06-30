contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - panic()
#
const balanceOfPool = ext_call.return_data[0]

const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const masterchef = 0x30b65159db82efcf8cede9861bc6b85336310eb2

const MAX_FEE = 600


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address keeperAddress;
uint32 stor2;
address strategistAddress;
uint256 stor2;
uint32 stor3;
address unirouterAddress;
uint256 stor3;
address vaultAddress;
address harvesterAddress;
uint256 STRATEGIST_FEE;
address inputAddress;
address outputAddress;
uint32 stor9;
address lpToken0Address;
address lpToken1Address;
uint256 poolId;
array of struct sub_76c76f91;
array of struct outputToLp0Route;
array of struct outputToLp1Route;
uint8 stor15;
uint8 stor15; offset 8
uint256 stor15; offset 8
uint256 lastHarvest;

function inputToken() payable {
    return inputAddress
}

function strategist() payable {
    return address(strategistAddress)
}

function unirouter() payable {
    return address(unirouterAddress)
}

function outputToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToLp0Route.length
    return outputToLp0Route[arg1].field_0
}

function poolId() payable {
    return poolId
}

function harvester() payable {
    return harvesterAddress
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function lpToken0() payable {
    return address(lpToken0Address)
}

function panicStatus() payable {
    return bool(uint8(stor15.field_0))
}

function sub_76c76f91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_76c76f91.length
    return sub_76c76f91[arg1].field_0
}

function STRATEGIST_FEE() payable {
    return STRATEGIST_FEE
}

function lpToken1() payable {
    return lpToken1Address
}

function harvestOnDeposit() payable {
    return bool(uint8(stor15.field_8))
}

function owner() payable {
    return owner
}

function keeper() payable {
    return keeperAddress
}

function sub_c9ec945a(?) payable {
    return bool(uint8(stor15.field_0))
}

function input() payable {
    return inputAddress
}

function lastHarvest() payable {
    return lastHarvest
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return vaultAddress
}

function outputToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToLp1Route.length
    return outputToLp1Route[arg1].field_0
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

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    Mask(248, 0, stor15.field_8) = Mask(248, 0, arg1)
    emit StratHarvestOnDeposit(arg1);
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not arg1:
        revert with 0, 'Keeper cannot be zero address'
    keeperAddress = arg1
    emit StratSetKeeper(arg1);
}

function setHarvester(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not arg1:
        revert with 0, 'Harvester cannot be zero address'
    harvesterAddress = arg1
    emit StratSetHarvester(arg1);
}

function setStrategistFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 600:
        revert with 0, 'Must be less than MAX_FEE'
    STRATEGIST_FEE = arg1
    emit feeChange(msg.sender, arg1);
}

function balanceOfWant() payable {
    require ext_code.size(inputAddress)
    staticcall inputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Vault cannot be the zero address'
    if vaultAddress:
        revert with 0, 'Vault already initialized'
    vaultAddress = arg1
    emit StratSetVault(arg1);
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

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6c537472617465676973742063616e6e6f7420626520746865207a65726f20616464726573,
                    mem[201 len 27]
    address(strategistAddress) = arg1
    emit StratSetStrategist(arg1);
}

function balanceOf() payable {
    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
    staticcall 0x30b65159db82efcf8cede9861bc6b85336310eb2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(inputAddress)
    staticcall inputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(inputAddress)
    staticcall inputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > 0:
        if ext_call.return_data[0] > 0:
            require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
            call 0x30b65159db82efcf8cede9861bc6b85336310eb2.stake(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function outputToUsdc() payable {
    if not sub_76c76f91.length:
        mem[(32 * sub_76c76f91.length) + 128] = 32
        mem[(32 * sub_76c76f91.length) + 160] = sub_76c76f91.length
        mem[(32 * sub_76c76f91.length) + 192 len floor32(sub_76c76f91.length)] = mem[128 len floor32(sub_76c76f91.length)]
        return memory
          from (32 * sub_76c76f91.length) + 128
           len (96 * sub_76c76f91.length) + 64
    mem[128] = address(sub_76c76f91.field_0)
    idx = 128
    s = 0
    while (32 * sub_76c76f91.length) + 96 > idx:
        mem[idx + 32] = sub_76c76f91[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_76c76f91.length) + 192 len floor32(sub_76c76f91.length)] = mem[128 len floor32(sub_76c76f91.length)]
    return Array(len=sub_76c76f91.length, data=mem[128 len floor32(sub_76c76f91.length)], mem[(32 * sub_76c76f91.length) + floor32(sub_76c76f91.length) + 192 len (32 * sub_76c76f91.length) - floor32(sub_76c76f91.length)]), 
}

function outputToLp1() payable {
    if not outputToLp1Route.length:
        mem[(32 * outputToLp1Route.length) + 128] = 32
        mem[(32 * outputToLp1Route.length) + 160] = outputToLp1Route.length
        mem[(32 * outputToLp1Route.length) + 192 len floor32(outputToLp1Route.length)] = mem[128 len floor32(outputToLp1Route.length)]
        return memory
          from (32 * outputToLp1Route.length) + 128
           len (96 * outputToLp1Route.length) + 64
    mem[128] = address(outputToLp1Route.field_0)
    idx = 128
    s = 0
    while (32 * outputToLp1Route.length) + 96 > idx:
        mem[idx + 32] = outputToLp1Route[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * outputToLp1Route.length) + 192 len floor32(outputToLp1Route.length)] = mem[128 len floor32(outputToLp1Route.length)]
    return Array(len=outputToLp1Route.length, data=mem[128 len floor32(outputToLp1Route.length)], mem[(32 * outputToLp1Route.length) + floor32(outputToLp1Route.length) + 192 len (32 * outputToLp1Route.length) - floor32(outputToLp1Route.length)]), 
}

function outputToLp0() payable {
    if not outputToLp0Route.length:
        mem[(32 * outputToLp0Route.length) + 128] = 32
        mem[(32 * outputToLp0Route.length) + 160] = outputToLp0Route.length
        mem[(32 * outputToLp0Route.length) + 192 len floor32(outputToLp0Route.length)] = mem[128 len floor32(outputToLp0Route.length)]
        return memory
          from (32 * outputToLp0Route.length) + 128
           len (96 * outputToLp0Route.length) + 64
    mem[128] = address(outputToLp0Route.field_0)
    idx = 128
    s = 0
    while (32 * outputToLp0Route.length) + 96 > idx:
        mem[idx + 32] = outputToLp0Route[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * outputToLp0Route.length) + 192 len floor32(outputToLp0Route.length)] = mem[128 len floor32(outputToLp0Route.length)]
    return Array(len=outputToLp0Route.length, data=mem[128 len floor32(outputToLp0Route.length)], mem[(32 * outputToLp0Route.length) + floor32(outputToLp0Route.length) + 192 len (32 * outputToLp0Route.length) - floor32(outputToLp0Route.length)]), 
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(inputAddress)
    staticcall inputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
        call 0x30b65159db82efcf8cede9861bc6b85336310eb2.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(inputAddress)
        staticcall inputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function beforeDeposit() payable {
    if uint8(stor15.field_8):
        if vaultAddress != msg.sender:
            revert with 0, '!vault'
        require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
        call 0x30b65159db82efcf8cede9861bc6b85336310eb2.getReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if STRATEGIST_FEE <= 0:
                if address(lpToken0Address) != outputAddress:
                    if not outputToLp0Route.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                    else:
                        mem[292] = address(outputToLp0Route.field_0)
                        idx = 292
                        s = 0
                        while (32 * outputToLp0Route.length) + 292 > idx + 32:
                            mem[idx + 32] = outputToLp0Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[292 len 32 * outputToLp0Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if lpToken1Address != outputAddress:
                    if not outputToLp1Route.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                    else:
                        mem[292] = address(outputToLp1Route.field_0)
                        idx = 292
                        s = 0
                        while (32 * outputToLp1Route.length) + 292 > idx + 32:
                            mem[idx + 32] = outputToLp1Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[292 len 32 * outputToLp1Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(lpToken0Address))
                staticcall address(lpToken0Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(lpToken1Address)
                staticcall lpToken1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0, uint32(stor9), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, address(this.address), block.timestamp
            else:
                if not ext_call.return_data[0]:
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = 0
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_76c76f91.length
                    if not sub_76c76f91.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _45 = mem[96 len 4], 0
                        require mem[96 len 4], 0 <= 4294967296
                        require mem[96 len 4], 0 + 32 <= return_data.size
                        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                        _65 = mem[_45 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_45 + 96])] = mem[_45 + 128 len floor32(mem[_45 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _65) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _65) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _65) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _65) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _65) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _65) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _65) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _65) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _65) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _65) + ceil32(return_data.size) + 384 len 4] = 0
                        mem[(32 * _65) + ceil32(return_data.size) + 356 len 0] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _65) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _65) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _65) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _65) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _65) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _65) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _65) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _65) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _65) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _65) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _65) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _65) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _65) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _65) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _65) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _65) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _65) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _65) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _65) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _65) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _65) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0] = 12
                        mem[292] = address(sub_76c76f91.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_76c76f91.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_76c76f91[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2645 = mem[96 len 4], 0
                        require mem[96 len 4], 0 <= 4294967296
                        require mem[96 len 4], 0 + 32 <= return_data.size
                        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                        _2684 = mem[_2645 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_2645 + 96])] = mem[_2645 + 128 len floor32(mem[_2645 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2684) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _2684) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _2684) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _2684) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _2684) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _2684) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _2684) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _2684) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _2684) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _2684) + ceil32(return_data.size) + 384 len 4] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _2684) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2684) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _2684) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _2684) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _2684) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _2684) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _2684) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _2684) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _2684) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _2684) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _2684) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _2684) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _2684) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _2684) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _2684) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _2684) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _2684) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _2684) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _2684) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _2684) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _2684) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * STRATEGIST_FEE / ext_call.return_data[0] != STRATEGIST_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0] * STRATEGIST_FEE / 10000
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_76c76f91.length
                    if not sub_76c76f91.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _56 = mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 <= 4294967296
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]
                        _75 = mem[_56 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_56 + 96])] = mem[_56 + 128 len floor32(mem[_56 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _75) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _75) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _75) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _75) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _75) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _75) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _75) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _75) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _75) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _75) + ceil32(return_data.size) + 384 len 4] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _75) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 >= 32
                                if not uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _75) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _75) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _75) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _75) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _75) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _75) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _75) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _75) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _75) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _75) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _75) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _75) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _75) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _75) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _75) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _75) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _75) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _75) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _75) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _75) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0] = 12
                        mem[292] = address(sub_76c76f91.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_76c76f91.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_76c76f91[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2643 = mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 <= 4294967296
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]
                        _2675 = mem[_2643 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_2643 + 96])] = mem[_2643 + 128 len floor32(mem[_2643 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2675) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _2675) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _2675) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _2675) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _2675) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _2675) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _2675) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _2675) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _2675) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _2675) + ceil32(return_data.size) + 384 len 4] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _2675) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 >= 32
                                if not uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _2675) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _2675) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _2675) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _2675) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _2675) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _2675) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _2675) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _2675) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _2675) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _2675) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _2675) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _2675) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _2675) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _2675) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _2675) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _2675) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _2675) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _2675) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _2675) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _2675) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(lpToken0Address))
                staticcall address(lpToken0Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(lpToken1Address)
                staticcall lpToken1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(lpToken0Address), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                    call 0x30b65159db82efcf8cede9861bc6b85336310eb2.stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        lastHarvest = block.timestamp
        emit StratHarvest(msg.sender);
}

function convertDust() payable {
    if msg.sender == owner:
        require ext_code.size(address(lpToken0Address))
        staticcall address(lpToken0Address).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lpToken1Address)
        staticcall lpToken1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if ext_call.return_data[0] > 0:
                if not sub_76c76f91.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                else:
                    mem[292] = address(sub_76c76f91.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_76c76f91.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_76c76f91[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
        else:
            if not sub_76c76f91.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if ext_call.return_data[0] > 0:
                        if not sub_76c76f91.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                        else:
                            mem[456] = address(sub_76c76f91.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_76c76f91.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_76c76f91[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[456 len 32 * sub_76c76f91.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = 0, address(strategistAddress), ext_call.return_data[0 len 28]
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct sub_76c76f91.length.field_224
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if ext_call.return_data[0] > 0:
                            if not sub_76c76f91.length:
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                            else:
                                mem[ceil32(return_data.size) + 457] = address(sub_76c76f91.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_76c76f91.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_76c76f91[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, address(strategistAddress), ext_call.return_data[0 len 28]
                            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                               funct sub_76c76f91.length.field_224
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                        if ext_call.return_data[0] > 0:
                            if not sub_76c76f91.length:
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(strategistAddress), ext_call.return_data[0 len 28]
                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                   funct sub_76c76f91.length.field_224
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            else:
                                mem[ceil32(return_data.size) + 457] = address(sub_76c76f91.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_76c76f91.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_76c76f91[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(strategistAddress), ext_call.return_data[0 len 28]
                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                   funct sub_76c76f91.length.field_224
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
            else:
                mem[292] = address(sub_76c76f91.field_0)
                idx = 292
                s = 0
                while (32 * sub_76c76f91.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_76c76f91[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                   funct sub_76c76f91.length.field_224
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if ext_call.return_data[0] > 0:
                        if not sub_76c76f91.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                        else:
                            mem[456] = address(sub_76c76f91.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_76c76f91.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_76c76f91[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[456 len 32 * sub_76c76f91.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[488 len 0] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    if ext_call.return_data[0] > 0:
                        if not sub_76c76f91.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 489 len 0] = 0
                            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                               funct uint32(stor2)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        else:
                            mem[ceil32(return_data.size) + 457] = address(sub_76c76f91.field_0)
                            idx = ceil32(return_data.size) + 457
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_76c76f91.length) + 457 > idx + 32:
                                mem[idx + 32] = sub_76c76f91[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                               funct sub_76c76f91.length.field_224
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        require ext_code.size(address(lpToken0Address))
        staticcall address(lpToken0Address).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lpToken1Address)
        staticcall lpToken1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if ext_call.return_data[0] > 0:
                if not sub_76c76f91.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                else:
                    mem[292] = address(sub_76c76f91.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_76c76f91.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_76c76f91[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                       funct sub_76c76f91.length.field_224
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
        else:
            if not sub_76c76f91.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                   funct sub_76c76f91.length.field_224
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if ext_call.return_data[0] > 0:
                        if not sub_76c76f91.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                            if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                            mem[488 len 0] = 0
                            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                               funct uint32(stor2)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                        else:
                            mem[456] = address(sub_76c76f91.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_76c76f91.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_76c76f91[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[456 len 32 * sub_76c76f91.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                            if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                               funct sub_76c76f91.length.field_224
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if ext_call.return_data[0] > 0:
                            if not sub_76c76f91.length:
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 489 len 0] = 0
                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457] = address(sub_76c76f91.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_76c76f91.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_76c76f91[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                   funct sub_76c76f91.length.field_224
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                        if ext_call.return_data[0] > 0:
                            if not sub_76c76f91.length:
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                   funct sub_76c76f91.length.field_224
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            else:
                                mem[ceil32(return_data.size) + 457] = address(sub_76c76f91.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_76c76f91.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_76c76f91[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 489 len 0] = 0
                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
            else:
                mem[292] = address(sub_76c76f91.field_0)
                idx = 292
                s = 0
                while (32 * sub_76c76f91.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_76c76f91[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                   funct sub_76c76f91.length.field_224
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if ext_call.return_data[0] > 0:
                        if not sub_76c76f91.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                        else:
                            mem[456] = address(sub_76c76f91.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_76c76f91.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_76c76f91[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[456 len 32 * sub_76c76f91.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct sub_76c76f91.length.field_224
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if ext_call.return_data[0] > 0:
                            if not sub_76c76f91.length:
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                   funct sub_76c76f91.length.field_224
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            else:
                                mem[ceil32(return_data.size) + 457] = address(sub_76c76f91.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_76c76f91.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_76c76f91[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 489 len 0] = 0
                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                        if ext_call.return_data[0] > 0:
                            if not sub_76c76f91.length:
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 489 len 0] = 0
                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457] = address(sub_76c76f91.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_76c76f91.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_76c76f91[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                   funct sub_76c76f91.length.field_224
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function managerHarvest() payable {
    if msg.sender == owner:
        require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
        call 0x30b65159db82efcf8cede9861bc6b85336310eb2.getReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if STRATEGIST_FEE <= 0:
                if address(lpToken0Address) != outputAddress:
                    if not outputToLp0Route.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                    else:
                        mem[292] = address(outputToLp0Route.field_0)
                        idx = 292
                        s = 0
                        while (32 * outputToLp0Route.length) + 292 > idx + 32:
                            mem[idx + 32] = outputToLp0Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[292 len 32 * outputToLp0Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if lpToken1Address != outputAddress:
                    if not outputToLp1Route.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                    else:
                        mem[292] = address(outputToLp1Route.field_0)
                        idx = 292
                        s = 0
                        while (32 * outputToLp1Route.length) + 292 > idx + 32:
                            mem[idx + 32] = outputToLp1Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[292 len 32 * outputToLp1Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(lpToken0Address))
                staticcall address(lpToken0Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(lpToken1Address)
                staticcall lpToken1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0, uint32(stor9), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, address(this.address), block.timestamp
            else:
                if not ext_call.return_data[0]:
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = 0
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_76c76f91.length
                    if not sub_76c76f91.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _80 = mem[96 len 4], 0
                        require mem[96 len 4], 0 <= 4294967296
                        require mem[96 len 4], 0 + 32 <= return_data.size
                        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                        _117 = mem[_80 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_80 + 96])] = mem[_80 + 128 len floor32(mem[_80 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _117) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _117) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _117) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _117) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _117) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _117) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _117) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _117) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _117) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _117) + ceil32(return_data.size) + 384 len 4] = 0
                        mem[(32 * _117) + ceil32(return_data.size) + 356 len 0] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _117) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _117) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _117) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _117) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _117) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _117) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _117) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _117) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _117) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _117) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _117) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _117) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _117) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _117) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _117) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _117) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _117) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _117) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _117) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _117) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _117) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0] = 12
                        mem[292] = address(sub_76c76f91.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_76c76f91.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_76c76f91[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _6101 = mem[96 len 4], 0
                        require mem[96 len 4], 0 <= 4294967296
                        require mem[96 len 4], 0 + 32 <= return_data.size
                        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                        _6161 = mem[_6101 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_6101 + 96])] = mem[_6101 + 128 len floor32(mem[_6101 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _6161) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _6161) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _6161) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _6161) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _6161) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _6161) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _6161) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _6161) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _6161) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _6161) + ceil32(return_data.size) + 384 len 4] = 0
                        mem[(32 * _6161) + ceil32(return_data.size) + 356 len 0] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _6161) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _6161) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _6161) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _6161) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _6161) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _6161) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _6161) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _6161) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _6161) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _6161) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _6161) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _6161) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _6161) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _6161) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _6161) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _6161) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _6161) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _6161) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _6161) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _6161) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _6161) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * STRATEGIST_FEE / ext_call.return_data[0] != STRATEGIST_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0] * STRATEGIST_FEE / 10000
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_76c76f91.length
                    if not sub_76c76f91.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _104 = mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 <= 4294967296
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]
                        _142 = mem[_104 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_104 + 96])] = mem[_104 + 128 len floor32(mem[_104 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _142) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _142) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _142) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _142) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _142) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _142) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _142) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _142) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _142) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _142) + ceil32(return_data.size) + 384 len 4] = 0
                        mem[(32 * _142) + ceil32(return_data.size) + 356 len 0] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _142) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 >= 32
                                if not uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _142) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _142) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _142) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _142) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _142) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _142) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _142) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _142) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _142) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _142) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _142) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _142) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _142) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _142) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _142) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _142) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _142) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _142) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _142) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _142) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0] = 12
                        mem[292] = address(sub_76c76f91.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_76c76f91.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_76c76f91[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _6099 = mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 <= 4294967296
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]
                        _6152 = mem[_6099 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_6099 + 96])] = mem[_6099 + 128 len floor32(mem[_6099 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _6152) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _6152) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _6152) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _6152) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _6152) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _6152) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _6152) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _6152) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _6152) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _6152) + ceil32(return_data.size) + 384 len 4] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _6152) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 >= 32
                                if not uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _6152) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _6152) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _6152) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _6152) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _6152) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _6152) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _6152) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _6152) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _6152) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _6152) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _6152) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _6152) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _6152) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _6152) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _6152) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _6152) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _6152) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _6152) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _6152) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _6152) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(lpToken0Address))
                staticcall address(lpToken0Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(lpToken1Address)
                staticcall lpToken1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(lpToken0Address), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                    call 0x30b65159db82efcf8cede9861bc6b85336310eb2.stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
        call 0x30b65159db82efcf8cede9861bc6b85336310eb2.getReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if STRATEGIST_FEE <= 0:
                if address(lpToken0Address) != outputAddress:
                    if not outputToLp0Route.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                    else:
                        mem[292] = address(outputToLp0Route.field_0)
                        idx = 292
                        s = 0
                        while (32 * outputToLp0Route.length) + 292 > idx + 32:
                            mem[idx + 32] = outputToLp0Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[292 len 32 * outputToLp0Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if lpToken1Address != outputAddress:
                    if not outputToLp1Route.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                    else:
                        mem[292] = address(outputToLp1Route.field_0)
                        idx = 292
                        s = 0
                        while (32 * outputToLp1Route.length) + 292 > idx + 32:
                            mem[idx + 32] = outputToLp1Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[292 len 32 * outputToLp1Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(lpToken0Address))
                staticcall address(lpToken0Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(lpToken1Address)
                staticcall lpToken1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args 0, uint32(stor9), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, address(this.address), block.timestamp
            else:
                if not ext_call.return_data[0]:
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = 0
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_76c76f91.length
                    if not sub_76c76f91.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _97 = mem[96 len 4], 0
                        require mem[96 len 4], 0 <= 4294967296
                        require mem[96 len 4], 0 + 32 <= return_data.size
                        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                        _136 = mem[_97 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_97 + 96])] = mem[_97 + 128 len floor32(mem[_97 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _136) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _136) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _136) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _136) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _136) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _136) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _136) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _136) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _136) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _136) + ceil32(return_data.size) + 384 len 4] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _136) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _136) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _136) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _136) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _136) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _136) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _136) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _136) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _136) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _136) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _136) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _136) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _136) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _136) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _136) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _136) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _136) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _136) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _136) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _136) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _136) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0] = 12
                        mem[292] = address(sub_76c76f91.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_76c76f91.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_76c76f91[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _6109 = mem[96 len 4], 0
                        require mem[96 len 4], 0 <= 4294967296
                        require mem[96 len 4], 0 + 32 <= return_data.size
                        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                        _6186 = mem[_6109 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_6109 + 96])] = mem[_6109 + 128 len floor32(mem[_6109 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _6186) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _6186) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _6186) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _6186) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _6186) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _6186) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _6186) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _6186) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _6186) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _6186) + ceil32(return_data.size) + 384 len 4] = 0
                        mem[(32 * _6186) + ceil32(return_data.size) + 356 len 0] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _6186) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], 0 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], 0
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], 0 > 0:
                                require mem[96 len 4], 0 >= 32
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _6186) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _6186) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _6186) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _6186) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _6186) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _6186) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _6186) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _6186) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _6186) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _6186) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _6186) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _6186) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _6186) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _6186) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _6186) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _6186) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _6186) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _6186) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _6186) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _6186) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * STRATEGIST_FEE / ext_call.return_data[0] != STRATEGIST_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0] * STRATEGIST_FEE / 10000
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_76c76f91.length
                    if not sub_76c76f91.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _123 = mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 <= 4294967296
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]
                        _164 = mem[_123 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_123 + 96])] = mem[_123 + 128 len floor32(mem[_123 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _164) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _164) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _164) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _164) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _164) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _164) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _164) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _164) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _164) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _164) + ceil32(return_data.size) + 384 len 4] = 0
                        mem[(32 * _164) + ceil32(return_data.size) + 356 len 0] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _164) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 >= 32
                                if not uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _164) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _164) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _164) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _164) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _164) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _164) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _164) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _164) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _164) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _164) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _164) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _164) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _164) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _164) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _164) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _164) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _164) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _164) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _164) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _164) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0] = 12
                        mem[292] = address(sub_76c76f91.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_76c76f91.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_76c76f91[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _6107 = mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 <= 4294967296
                        require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 + 96]
                        _6177 = mem[_6107 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_6107 + 96])] = mem[_6107 + 128 len floor32(mem[_6107 + 96])]
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _6177) + ceil32(return_data.size) + 164] = address(strategistAddress)
                        mem[(32 * _6177) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _6177) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _6177) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
                        mem[(32 * _6177) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _6177) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _6177) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _6177) + ceil32(return_data.size) + 398 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _6177) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                        mem[(32 * _6177) + ceil32(return_data.size) + 384 len 4] = 0
                        mem[(32 * _6177) + ceil32(return_data.size) + 356 len 0] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _6177) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 > 0:
                                require mem[96 len 4], Mask(224, 32, ext_call.return_data[0] * STRATEGIST_FEE / 10000) >> 32 >= 32
                                if not uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _6177) + ceil32(return_data.size) + 402 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _6177) + ceil32(return_data.size) + 488] = address(outputToLp0Route.field_0)
                                    idx = (32 * _6177) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _6177) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _6177) + ceil32(return_data.size) + 488 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _6177) + ceil32(return_data.size) + 488] = address(outputToLp1Route.field_0)
                                    idx = (32 * _6177) + ceil32(return_data.size) + 488
                                    s = 0
                                    while (32 * _6177) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 488 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _6177) + ceil32(return_data.size) + 488 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(32 * _6177) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _6177) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _6177) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                            require ext_code.size(outputAddress)
                            staticcall outputAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(lpToken0Address) != outputAddress:
                                if not outputToLp0Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length
                                else:
                                    mem[(32 * _6177) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp0Route.field_0)
                                    idx = (32 * _6177) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _6177) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp0Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp0Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp0Route.length, mem[(32 * _6177) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp0Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if lpToken1Address != outputAddress:
                                if not outputToLp1Route.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length
                                else:
                                    mem[(32 * _6177) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = address(outputToLp1Route.field_0)
                                    idx = (32 * _6177) + ceil32(return_data.size) + ceil32(return_data.size) + 489
                                    s = 0
                                    while (32 * _6177) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * outputToLp1Route.length) + 489 > idx + 32:
                                        mem[idx + 32] = outputToLp1Route[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, outputToLp1Route.length, mem[(32 * _6177) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 32 * outputToLp1Route.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(lpToken0Address))
                staticcall address(lpToken0Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(lpToken1Address)
                staticcall lpToken1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(lpToken0Address), lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                    call 0x30b65159db82efcf8cede9861bc6b85336310eb2.stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    lastHarvest = block.timestamp
    emit StratHarvest(msg.sender);
    emit StratHarvestFromMangager(msg.sender);
}

function pause() payable {
    if msg.sender == owner:
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(inputAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
        mem[324 len 0] = 0
        call inputAddress.0x36310eb2 with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[588 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[524 len 28], mem[652 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[858 len 26]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[752 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[688 len 28], mem[816 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                    else:
                        mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
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
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 859 len 26]
                        if ext_code.size(lpToken1Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 753 len 64] = 0, address(unirouterAddress), 0
                        call lpToken1Address with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 863 len 22]
                        else:
                            mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 785]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
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
                        if ext_code.size(lpToken1Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 753 len 64] = 0, address(unirouterAddress), 0
                        call lpToken1Address with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 863 len 22]
                        else:
                            mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size > 0:
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
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
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
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 753 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
                    else:
                        mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 785]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 753 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
                    else:
                        mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 785]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
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
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + 866 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 696 len 26]
            if ext_code.size(address(lpToken0Address)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(unirouterAddress), 0
            call address(lpToken0Address) with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                call lpToken1Address with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
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
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                call lpToken1Address with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(4 * ceil32(return_data.size)) + 866 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 0] = 0
            call lpToken1Address with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 760] = 32
                mem[(4 * ceil32(return_data.size)) + 792] = 32
                mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 756
                   len (7 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
            require return_data.size >= 32
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 760] = 32
            mem[(4 * ceil32(return_data.size)) + 792] = 42
            mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + 756
               len (7 * ceil32(return_data.size)) + 132
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
        if ext_code.size(outputAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
            if ext_code.size(address(lpToken0Address)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            call address(lpToken0Address) with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                mem[ceil32(return_data.size) + 817 len 0] = 0
                call lpToken1Address with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
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
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(2 * ceil32(return_data.size)) + 860 len 26]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                    mem[(2 * ceil32(return_data.size)) + 818 len 0] = 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 865 len 22]
                else:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 865 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 696 len 26]
            if ext_code.size(address(lpToken0Address)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[(2 * ceil32(return_data.size)) + 654 len 0] = 0
            call address(lpToken0Address) with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
                call lpToken1Address with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 701 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 861 len 26]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 755 len 64] = 0, address(unirouterAddress), 0
                call lpToken1Address with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 691 len 28], mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 819 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 865 len 22]
                else:
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 787]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(4 * ceil32(return_data.size)) + 866 len 22]
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + 696 len 26]
        if ext_code.size(address(lpToken0Address)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 590 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        mem[(2 * ceil32(return_data.size)) + 654 len 0] = 0
        call address(lpToken0Address) with:
           funct uint32(stor3)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[(2 * ceil32(return_data.size)) + 654 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
            call lpToken1Address with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 861 len 26]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 755 len 64] = 0, address(unirouterAddress), 0
            call lpToken1Address with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 691 len 28], mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 819 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 865 len 22]
            else:
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 787]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(4 * ceil32(return_data.size)) + 866 len 22]
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 701 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 861 len 26]
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 755 len 64] = 0, address(unirouterAddress), 0
        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 847 len 4] = 0
        call lpToken1Address with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 691 len 28], mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 819 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 865 len 22]
        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 755] = return_data.size
        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 760] = 32
            mem[(4 * ceil32(return_data.size)) + 792] = 32
            mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 756
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
        require return_data.size >= 32
        if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 787]:
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(inputAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
        call inputAddress.0x36310eb2 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[488 len 0] = 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[588 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[524 len 28], mem[652 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[858 len 26]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[752 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[816 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                    else:
                        mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
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
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 859 len 26]
                        if ext_code.size(lpToken1Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                        mem[ceil32(return_data.size) + 817 len 0] = 0
                        call lpToken1Address with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[ceil32(return_data.size) + 817 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 863 len 22]
                        else:
                            mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 785]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
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
                        if ext_code.size(lpToken1Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                        call lpToken1Address with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 817 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 863 len 22]
                        else:
                            mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
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
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
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
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 753 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
                    else:
                        mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
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
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 753 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
                    else:
                        mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 785]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 696 len 26]
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + 866 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 0] = 0
                call lpToken1Address with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 760] = 32
                    mem[(4 * ceil32(return_data.size)) + 792] = 32
                    mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 756
                       len (7 * ceil32(return_data.size)) + 100
                if return_data.size <= 0:
                require return_data.size >= 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 760] = 32
                mem[(4 * ceil32(return_data.size)) + 792] = 42
                mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 756
                   len (7 * ceil32(return_data.size)) + 132
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 457]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 696 len 26]
            if ext_code.size(address(lpToken0Address)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(unirouterAddress), 0
            call address(lpToken0Address) with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
                call lpToken1Address with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 622]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
        else:
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
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 753 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
                    else:
                        mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 785]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 696 len 26]
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + 866 len 22]
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 622]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
            else:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 696 len 26]
                if ext_code.size(address(lpToken0Address)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(unirouterAddress), 0
                call address(lpToken0Address) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
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
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 786]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
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
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, address(unirouterAddress), 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
        call lpToken1Address with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 760] = 32
            mem[(4 * ceil32(return_data.size)) + 792] = 32
            mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 756
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
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
