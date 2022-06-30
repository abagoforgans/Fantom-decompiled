contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - panic()
#  - pause()
#
const balanceOfPool = ext_call.return_data[0]

const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const balanceOf = (2 * ext_call.return_data[0])

const balanceOfWant = ext_call.return_data[0]

const input = 0xd4ff787ad07d105983146d87474e67294029802e

const output = 0x5b8acd4e79849ff754d2822c06add5ddc010baf

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const masterchef = 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48

const MAX_FEE = 600


uint8 paused; offset 160
address owner;
address keeperAddress;
uint32 stor2;
address strategistAddress;
uint256 stor2;
address unirouterAddress;
address vaultAddress;
address harvesterAddress;
uint256 STRATEGIST_FEE;
address lpToken0Address;
address lpToken1Address;
uint256 poolId;
array of struct sub_76c76f91;
array of struct outputToLp0Route;
array of struct outputToLp1Route;
uint8 harvestOnDeposit;
uint256 lastHarvest;

function strategist() payable {
    return address(strategistAddress)
}

function unirouter() payable {
    return unirouterAddress
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
    return bool(paused)
}

function lpToken0() payable {
    return lpToken0Address
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
    return bool(harvestOnDeposit)
}

function owner() payable {
    return owner
}

function keeper() payable {
    return keeperAddress
}

function lastHarvest() payable {
    return lastHarvest
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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    harvestOnDeposit = uint8(arg1)
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

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6c537472617465676973742063616e6e6f7420626520746865207a65726f20616464726573,
                    mem[201 len 27]
    address(strategistAddress) = arg1
    emit StratSetStrategist(arg1);
}

function outputToUsdc() payable {
    if sub_76c76f91.length:
        mem[128] = address(sub_76c76f91.field_0)
        if (32 * sub_76c76f91.length) + 32 > 64:
            mem[160] = address(sub_76c76f91.field_256)
            idx = 160
            s = 1
            while (32 * sub_76c76f91.length) + 96 > idx:
                mem[idx + 32] = sub_76c76f91[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_76c76f91.length) + 128] = 32
    mem[(32 * sub_76c76f91.length) + 160] = sub_76c76f91.length
    mem[(32 * sub_76c76f91.length) + 192 len floor32(sub_76c76f91.length)] = mem[128 len floor32(sub_76c76f91.length)]
    return memory
      from (32 * sub_76c76f91.length) + 128
       len (96 * sub_76c76f91.length) + 64
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(0xd4ff787ad07d105983146d87474e67294029802e)
    staticcall 0xd4ff787ad07d105983146d87474e67294029802e.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48)
        call 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48.stake(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function outputToLp0() payable {
    if outputToLp0Route.length:
        mem[128] = address(outputToLp0Route.field_0)
        if (32 * outputToLp0Route.length) + 32 > 64:
            mem[160] = address(outputToLp0Route.field_256)
            idx = 160
            s = 1
            while (32 * outputToLp0Route.length) + 96 > idx:
                mem[idx + 32] = outputToLp0Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * outputToLp0Route.length) + 128] = 32
    mem[(32 * outputToLp0Route.length) + 160] = outputToLp0Route.length
    mem[(32 * outputToLp0Route.length) + 192 len floor32(outputToLp0Route.length)] = mem[128 len floor32(outputToLp0Route.length)]
    return memory
      from (32 * outputToLp0Route.length) + 128
       len (96 * outputToLp0Route.length) + 64
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

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0xd4ff787ad07d105983146d87474e67294029802e)
    staticcall 0xd4ff787ad07d105983146d87474e67294029802e.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48)
        call 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xd4ff787ad07d105983146d87474e67294029802e)
        staticcall 0xd4ff787ad07d105983146d87474e67294029802e.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function harvest() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if harvesterAddress != msg.sender:
        revert with 0, '!Harvester'
    require ext_code.size(0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48)
    call 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
    staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
        staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not sub_76c76f91.length:
                require ext_code.size(unirouterAddress)
                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
            else:
                mem[292] = address(sub_76c76f91.field_0)
                idx = 292
                s = 0
                while (32 * sub_76c76f91.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_76c76f91[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(unirouterAddress)
                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
        else:
            if STRATEGIST_FEE * ext_call.return_data[0] / ext_call.return_data[0] != STRATEGIST_FEE:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_76c76f91.length:
                require ext_code.size(unirouterAddress)
                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(STRATEGIST_FEE * ext_call.return_data[0] / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
            else:
                mem[292] = address(sub_76c76f91.field_0)
                idx = 292
                s = 0
                while (32 * sub_76c76f91.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_76c76f91[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(unirouterAddress)
                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(STRATEGIST_FEE * ext_call.return_data[0] / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
        if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
            staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if lpToken0Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                if not outputToLp0Route.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length
                else:
                    mem[456] = address(outputToLp0Route.field_0)
                    idx = 456
                    s = 0
                    while (32 * outputToLp0Route.length) + 456 > idx + 32:
                        mem[idx + 32] = outputToLp0Route[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length, mem[456 len 32 * outputToLp0Route.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if lpToken1Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                if not outputToLp1Route.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length
                else:
                    mem[456] = address(outputToLp1Route.field_0)
                    idx = 456
                    s = 0
                    while (32 * outputToLp1Route.length) + 456 > idx + 32:
                        mem[idx + 32] = outputToLp1Route[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length, mem[456 len 32 * outputToLp1Route.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
            staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if lpToken0Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                if not outputToLp0Route.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length
                else:
                    mem[ceil32(return_data.size) + 457] = address(outputToLp0Route.field_0)
                    idx = ceil32(return_data.size) + 457
                    s = 0
                    while ceil32(return_data.size) + (32 * outputToLp0Route.length) + 457 > idx + 32:
                        mem[idx + 32] = outputToLp0Route[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length, mem[ceil32(return_data.size) + 457 len 32 * outputToLp0Route.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if lpToken1Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                if not outputToLp1Route.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length
                else:
                    mem[ceil32(return_data.size) + 457] = address(outputToLp1Route.field_0)
                    idx = ceil32(return_data.size) + 457
                    s = 0
                    while ceil32(return_data.size) + (32 * outputToLp1Route.length) + 457 > idx + 32:
                        mem[idx + 32] = outputToLp1Route[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length, mem[ceil32(return_data.size) + 457 len 32 * outputToLp1Route.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lpToken0Address)
        staticcall lpToken0Address.0x70a08231 with:
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
        require ext_code.size(unirouterAddress)
        call unirouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args lpToken0Address, lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if paused:
            revert with 0, 'Pausable: paused'
        require ext_code.size(0xd4ff787ad07d105983146d87474e67294029802e)
        staticcall 0xd4ff787ad07d105983146d87474e67294029802e.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48)
            call 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48.stake(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    lastHarvest = block.timestamp
    emit StratHarvest(msg.sender);
}

function beforeDeposit() payable {
    if harvestOnDeposit:
        if vaultAddress != msg.sender:
            revert with 0, '!vault'
        require ext_code.size(0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48)
        call 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48.getReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
        staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
            staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_76c76f91.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
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
                    if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
                    if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                       funct sub_76c76f91.length.field_224
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            else:
                if STRATEGIST_FEE * ext_call.return_data[0] / ext_call.return_data[0] != STRATEGIST_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_76c76f91.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(STRATEGIST_FEE * ext_call.return_data[0] / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                else:
                    mem[292] = address(sub_76c76f91.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_76c76f91.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_76c76f91[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(STRATEGIST_FEE * ext_call.return_data[0] / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
                staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if lpToken0Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp0Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length
                    else:
                        mem[456] = address(outputToLp0Route.field_0)
                        idx = 456
                        s = 0
                        while (32 * outputToLp0Route.length) + 456 > idx + 32:
                            mem[idx + 32] = outputToLp0Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length, mem[456 len 32 * outputToLp0Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if lpToken1Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp1Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length
                    else:
                        mem[456] = address(outputToLp1Route.field_0)
                        idx = 456
                        s = 0
                        while (32 * outputToLp1Route.length) + 456 > idx + 32:
                            mem[idx + 32] = outputToLp1Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length, mem[456 len 32 * outputToLp1Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
                staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if lpToken0Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp0Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length
                    else:
                        mem[ceil32(return_data.size) + 457] = address(outputToLp0Route.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * outputToLp0Route.length) + 457 > idx + 32:
                            mem[idx + 32] = outputToLp0Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length, mem[ceil32(return_data.size) + 457 len 32 * outputToLp0Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if lpToken1Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp1Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length
                    else:
                        mem[ceil32(return_data.size) + 457] = address(outputToLp1Route.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * outputToLp1Route.length) + 457 > idx + 32:
                            mem[idx + 32] = outputToLp1Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length, mem[ceil32(return_data.size) + 457 len 32 * outputToLp1Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(lpToken0Address)
            staticcall lpToken0Address.0x70a08231 with:
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
            require ext_code.size(unirouterAddress)
            call unirouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args lpToken0Address, lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if paused:
                revert with 0, 'Pausable: paused'
            require ext_code.size(0xd4ff787ad07d105983146d87474e67294029802e)
            staticcall 0xd4ff787ad07d105983146d87474e67294029802e.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48)
                call 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48.stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        lastHarvest = block.timestamp
        emit StratHarvest(msg.sender);
}

function managerHarvest() payable {
    if msg.sender == owner:
        require ext_code.size(0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48)
        call 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48.getReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
        staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
            staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_76c76f91.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                else:
                    mem[292] = address(sub_76c76f91.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_76c76f91.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_76c76f91[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                   funct sub_76c76f91.length.field_224
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            else:
                if STRATEGIST_FEE * ext_call.return_data[0] / ext_call.return_data[0] != STRATEGIST_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_76c76f91.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(STRATEGIST_FEE * ext_call.return_data[0] / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                else:
                    mem[292] = address(sub_76c76f91.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_76c76f91.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_76c76f91[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(STRATEGIST_FEE * ext_call.return_data[0] / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
                staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if lpToken0Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp0Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length
                    else:
                        mem[456] = address(outputToLp0Route.field_0)
                        idx = 456
                        s = 0
                        while (32 * outputToLp0Route.length) + 456 > idx + 32:
                            mem[idx + 32] = outputToLp0Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length, mem[456 len 32 * outputToLp0Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if lpToken1Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp1Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length
                    else:
                        mem[456] = address(outputToLp1Route.field_0)
                        idx = 456
                        s = 0
                        while (32 * outputToLp1Route.length) + 456 > idx + 32:
                            mem[idx + 32] = outputToLp1Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length, mem[456 len 32 * outputToLp1Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
                staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if lpToken0Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp0Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length
                    else:
                        mem[ceil32(return_data.size) + 457] = address(outputToLp0Route.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * outputToLp0Route.length) + 457 > idx + 32:
                            mem[idx + 32] = outputToLp0Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length, mem[ceil32(return_data.size) + 457 len 32 * outputToLp0Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if lpToken1Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp1Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length
                    else:
                        mem[ceil32(return_data.size) + 457] = address(outputToLp1Route.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * outputToLp1Route.length) + 457 > idx + 32:
                            mem[idx + 32] = outputToLp1Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length, mem[ceil32(return_data.size) + 457 len 32 * outputToLp1Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(lpToken0Address)
            staticcall lpToken0Address.0x70a08231 with:
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
            require ext_code.size(unirouterAddress)
            call unirouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args lpToken0Address, lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if paused:
                revert with 0, 'Pausable: paused'
            require ext_code.size(0xd4ff787ad07d105983146d87474e67294029802e)
            staticcall 0xd4ff787ad07d105983146d87474e67294029802e.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48)
                call 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48.stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        require ext_code.size(0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48)
        call 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48.getReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
        staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
            staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_76c76f91.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
                else:
                    mem[292] = address(sub_76c76f91.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_76c76f91.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_76c76f91[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                   funct sub_76c76f91.length.field_224
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            else:
                if STRATEGIST_FEE * ext_call.return_data[0] / ext_call.return_data[0] != STRATEGIST_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_76c76f91.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(STRATEGIST_FEE * ext_call.return_data[0] / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length
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
                    if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                       funct sub_76c76f91.length.field_224
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
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(STRATEGIST_FEE * ext_call.return_data[0] / 10000), 0, 160, address(this.address), block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
                    if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
                staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if lpToken0Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp0Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length
                    else:
                        mem[456] = address(outputToLp0Route.field_0)
                        idx = 456
                        s = 0
                        while (32 * outputToLp0Route.length) + 456 > idx + 32:
                            mem[idx + 32] = outputToLp0Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length, mem[456 len 32 * outputToLp0Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if lpToken1Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp1Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length
                    else:
                        mem[456] = address(outputToLp1Route.field_0)
                        idx = 456
                        s = 0
                        while (32 * outputToLp1Route.length) + 456 > idx + 32:
                            mem[idx + 32] = outputToLp1Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length, mem[456 len 32 * outputToLp1Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(0x5b8acd4e79849ff754d2822c06add5ddc010baf)
                staticcall 0x5b8acd4e79849ff754d2822c06add5ddc010baf.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if lpToken0Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp0Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length
                    else:
                        mem[ceil32(return_data.size) + 457] = address(outputToLp0Route.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * outputToLp0Route.length) + 457 > idx + 32:
                            mem[idx + 32] = outputToLp0Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp0Route.length, mem[ceil32(return_data.size) + 457 len 32 * outputToLp0Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if lpToken1Address != 0x5b8acd4e79849ff754d2822c06add5ddc010baf:
                    if not outputToLp1Route.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length
                    else:
                        mem[ceil32(return_data.size) + 457] = address(outputToLp1Route.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * outputToLp1Route.length) + 457 > idx + 32:
                            mem[idx + 32] = outputToLp1Route[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, outputToLp1Route.length, mem[ceil32(return_data.size) + 457 len 32 * outputToLp1Route.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(lpToken0Address)
            staticcall lpToken0Address.0x70a08231 with:
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
            require ext_code.size(unirouterAddress)
            call unirouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args lpToken0Address, lpToken1Address, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if paused:
                revert with 0, 'Pausable: paused'
            require ext_code.size(0xd4ff787ad07d105983146d87474e67294029802e)
            staticcall 0xd4ff787ad07d105983146d87474e67294029802e.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48)
                call 0x21416a0ad9e1d020c97bb0aa9ebf5d714bba7b48.stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    lastHarvest = block.timestamp
    emit StratHarvest(msg.sender);
    emit StratHarvestFromMangager(msg.sender);
}

function convertDust() payable {
    if msg.sender == owner:
        require ext_code.size(lpToken0Address)
        staticcall lpToken0Address.0x70a08231 with:
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
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if not sub_76c76f91.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_76c76f91.length
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
                    if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
                    if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
        else:
            if not sub_76c76f91.length:
                require ext_code.size(unirouterAddress)
                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_76c76f91.length
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
                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if ext_call.return_data[0]:
                        if not sub_76c76f91.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length
                        else:
                            mem[456] = address(sub_76c76f91.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_76c76f91.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_76c76f91[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[456 len 32 * sub_76c76f91.length]
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
                        if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if ext_call.return_data[0]:
                            if not sub_76c76f91.length:
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length
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
                                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
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
                                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
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
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                        if ext_call.return_data[0]:
                            if not sub_76c76f91.length:
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length
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
                                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
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
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
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
                                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[292] = address(sub_76c76f91.field_0)
                idx = 292
                s = 0
                while (32 * sub_76c76f91.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_76c76f91[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(unirouterAddress)
                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if ext_call.return_data[0]:
                        if not sub_76c76f91.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length
                        else:
                            mem[456] = address(sub_76c76f91.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_76c76f91.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_76c76f91[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[456 len 32 * sub_76c76f91.length]
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
                        if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    if ext_call.return_data[0]:
                        if not sub_76c76f91.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length
                        else:
                            mem[ceil32(return_data.size) + 457] = address(sub_76c76f91.field_0)
                            idx = ceil32(return_data.size) + 457
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_76c76f91.length) + 457 > idx + 32:
                                mem[idx + 32] = sub_76c76f91[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
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
                        if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        require ext_code.size(lpToken0Address)
        staticcall lpToken0Address.0x70a08231 with:
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
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if not sub_76c76f91.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_76c76f91.length
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
                    if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                       funct sub_76c76f91.length.field_224
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
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
                    if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
        else:
            if not sub_76c76f91.length:
                require ext_code.size(unirouterAddress)
                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_76c76f91.length
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
                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if ext_call.return_data[0]:
                        if not sub_76c76f91.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length
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
                            if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                                revert with 0, 'Address: call to non-contract'
                            mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                               funct sub_76c76f91.length.field_224
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
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[456 len 32 * sub_76c76f91.length]
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
                            if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    if ext_call.return_data[0]:
                        if not sub_76c76f91.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length
                        else:
                            mem[ceil32(return_data.size) + 457] = address(sub_76c76f91.field_0)
                            idx = ceil32(return_data.size) + 457
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_76c76f91.length) + 457 > idx + 32:
                                mem[idx + 32] = sub_76c76f91[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
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
                        if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[292] = address(sub_76c76f91.field_0)
                idx = 292
                s = 0
                while (32 * sub_76c76f91.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_76c76f91[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(unirouterAddress)
                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
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
                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if ext_call.return_data[0]:
                        if not sub_76c76f91.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length
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
                            if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[456 len 32 * sub_76c76f91.length]
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
                            if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if ext_call.return_data[0]:
                            if not sub_76c76f91.length:
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length
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
                                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
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
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
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
                                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
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
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                        if ext_call.return_data[0]:
                            if not sub_76c76f91.length:
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length
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
                                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
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
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_76c76f91.length, mem[ceil32(return_data.size) + 457 len 32 * sub_76c76f91.length]
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
                                if not ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
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
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}



}
