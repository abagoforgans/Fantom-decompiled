contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address blacklisterAddress;
mapping of uint8 stor102;
uint8 paused; offset 160
address rescuerAddress;
address faucetAddress;
address tokenAddress;
mapping of uint256 lastFreeSpin;
mapping of uint256 extraSpins;
uint256 extraSpinPrice;
uint256 freeSpinDelay;
array of struct stor159;
array of uint256 stor5316887300154588152785298291589882582536036828199170392778787384998216457768;

function extraSpinPrice() payable {
    return extraSpinPrice
}

function rescuer() payable {
    return rescuerAddress
}

function paused() payable {
    return bool(paused)
}

function freeSpinDelay() payable {
    return freeSpinDelay
}

function extraSpins(address arg1) payable {
    require calldata.size - 4 >= 32
    return extraSpins[arg1]
}

function owner() payable {
    return owner
}

function lastFreeSpin(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastFreeSpin[arg1]
}

function blacklister() payable {
    return blacklisterAddress
}

function faucet() payable {
    return faucetAddress
}

function token() payable {
    return tokenAddress
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor102[address(arg1)])
}

function _fallback() payable {
    revert
}

function selfBlacklist() payable {
    stor102[msg.sender] = 1
    emit Blacklisted(msg.sender);
    emit SelfBlacklisted(msg.sender);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFaucet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    faucetAddress = arg1
    emit FaucetChanged(arg1);
}

function setFreeSpinDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit FreeSpinDelayChanged(arg1, freeSpinDelay);
    freeSpinDelay = arg1
}

function setExtraSpinPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit ExtraSpinPriceChanged(arg1, extraSpinPrice);
    extraSpinPrice = arg1
}

function canSpin() payable {
    if freeSpinDelay + lastFreeSpin[address(msg.sender)] < lastFreeSpin[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if freeSpinDelay + lastFreeSpin[address(msg.sender)] <= block.timestamp:
        return freeSpinDelay + lastFreeSpin[address(msg.sender)] <= block.timestamp
    return bool(extraSpins[address(msg.sender)])
}

function canSpinFor(address arg1) payable {
    require calldata.size - 4 >= 32
    if freeSpinDelay + lastFreeSpin[address(arg1)] < lastFreeSpin[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if freeSpinDelay + lastFreeSpin[address(arg1)] <= block.timestamp:
        return freeSpinDelay + lastFreeSpin[address(arg1)] <= block.timestamp
    return bool(extraSpins[address(arg1)])
}

function blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    if blacklisterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x79426c61636b6c69737461626c653a2063616c6c6572206973206e6f742074686520626c61636b6c69737465,
                    mem[208 len 20]
    stor102[address(arg1)] = 1
    emit Blacklisted(arg1);
}

function unBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    if blacklisterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x79426c61636b6c69737461626c653a2063616c6c6572206973206e6f742074686520626c61636b6c69737465,
                    mem[208 len 20]
    stor102[address(arg1)] = 0
    emit UnBlacklisted(arg1);
}

function updateRescuer(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73526573637561626c653a206e6577207265736375657220697320746865207a65726f20616464726573,
                    mem[206 len 22]
    rescuerAddress = arg1
    emit RescuerChanged(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x304f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateBlacklister(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x73426c61636b6c69737461626c653a206e657720626c61636b6c697374657220697320746865207a65726f20616464726573,
                    mem[214 len 14]
    blacklisterAddress = arg1
    emit BlacklisterChanged(arg1);
}

function getPrizes() payable {
    if not stor159.length:
        mem[(32 * stor159.length) + 128] = 32
        mem[(32 * stor159.length) + 160] = stor159.length
        mem[(32 * stor159.length) + 192 len floor32(stor159.length)] = mem[128 len floor32(stor159.length)]
        return memory
          from (32 * stor159.length) + 128
           len (96 * stor159.length) + 64
    mem[128] = uint256(stor159.field_0)
    idx = 128
    s = 0
    while (32 * stor159.length) + 96 > idx:
        mem[idx + 32] = stor159[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor159.length) + 192 len floor32(stor159.length)] = mem[128 len floor32(stor159.length)]
    return Array(len=stor159.length, data=mem[128 len floor32(stor159.length)], mem[(32 * stor159.length) + floor32(stor159.length) + 192 len (32 * stor159.length) - floor32(stor159.length)]), 
}

function grantExtraSpin(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x645370696e4d616368696e653a207370696e4f776e657220697320746865207a65726f20616464726573,
                    mem[206 len 22]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe5370696e4d616368696e653a207370696e7320636f756e74206d7573742062652067726561746572207468616e20,
                    mem[211 len 17]
    if arg2 + extraSpins[address(arg1)] < extraSpins[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    extraSpins[address(arg1)] += arg2
    emit ExtraSpinGranted(arg2, msg.sender, arg1);
}

function setPrizes(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1.length:
        revert with 0, 
                    32,
                    43,
                    0x735370696e4d616368696e6556313a207072697a65732061727261792063616e6e6f7420626520656d7074,
                    mem[(32 * arg1.length) + 239 len 21]
    stor159.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor159.length > idx:
            stor159[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor159[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor159.length > idx:
            stor159[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[(32 * arg1.length) + 128] = 32
    mem[(32 * arg1.length) + 160] = arg1.length
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit PrizesDistributionChanged(mem[(32 * arg1.length) + 128 len (96 * arg1.length) + 64]);
}

function rescueERC20(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if rescuerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x64526573637561626c653a2063616c6c6572206973206e6f742074686520726573637565,
                    mem[200 len 28]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
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

function buyExtraSpin(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x645370696e4d616368696e653a207370696e4f776e657220697320746865207a65726f20616464726573,
                    mem[206 len 22]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe5370696e4d616368696e653a207370696e7320636f756e74206d7573742062652067726561746572207468616e20,
                    mem[211 len 17]
    if not extraSpinPrice:
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
        mem[416 len 4] = 0
        call tokenAddress with:
             gas gas_remaining wei
            args 0, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        if arg2 * extraSpinPrice / extraSpinPrice != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2 * extraSpinPrice) >> 32
        mem[416 len 4] = 0
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg2 * extraSpinPrice) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 * extraSpinPrice
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    if arg2 + extraSpins[address(arg1)] < extraSpins[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    extraSpins[address(arg1)] += arg2
    emit ExtraSpinPurchased(arg2, msg.sender, arg1);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        paused = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            paused = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if not uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if ext_code.size(this.address):
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                if not uint8(stor0.field_8):
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if not uint8(stor0.field_8):
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        if ext_code.size(this.address):
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if not uint8(stor0.field_8):
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0, 'SpinMachine: token zero-address'
    tokenAddress = arg1
    freeSpinDelay = 0
    stor159.length++
    storBC14[stor159.length] = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function spin() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if stor102[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if not faucetAddress:
        if freeSpinDelay + lastFreeSpin[address(msg.sender)] < lastFreeSpin[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if freeSpinDelay + lastFreeSpin[address(msg.sender)] <= block.timestamp:
            lastFreeSpin[address(msg.sender)] = block.timestamp
            require stor159.length
            require sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length < stor159.length
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0 < ext_call.return_data[0]:
                if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0:
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, mem[440 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                        if not block.timestamp:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                    else:
                        mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[408]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 487 len 22]
                emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, 0, msg.sender);
            else:
                if not ext_call.return_data[0]:
                    emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, ext_call.return_data[0], 0, msg.sender);
                else:
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[440 len 0] = 0
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[440 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                        if not block.timestamp:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                        emit Spin(address rg1, uint256 rg2, uint256 rg3, bool rg4):
                                  stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0,
                                  ext_call.return_data[0],
                                  0,
                                  0,
                                  msg.sender,
                    else:
                        mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[408]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 487 len 22]
                        emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, ext_call.return_data[0], 0, msg.sender);
        else:
            if not extraSpins[address(msg.sender)]:
                return 0
            if 1 > extraSpins[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            extraSpins[address(msg.sender)]--
            require stor159.length
            require sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length < stor159.length
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0 < ext_call.return_data[0]:
                if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0:
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, mem[440 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                        if not block.timestamp:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                    else:
                        mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[408]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 487 len 22]
                emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, 1, msg.sender);
            else:
                if ext_call.return_data[0]:
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[440 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                        if not block.timestamp:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                    else:
                        mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[408]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 487 len 22]
                emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, ext_call.return_data[0], 1, msg.sender);
    else:
        if ext_code.size(msg.sender):
            if freeSpinDelay + lastFreeSpin[address(msg.sender)] < lastFreeSpin[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if freeSpinDelay + lastFreeSpin[address(msg.sender)] <= block.timestamp:
                lastFreeSpin[address(msg.sender)] = block.timestamp
                require stor159.length
                require sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length < stor159.length
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0 < ext_call.return_data[0]:
                    if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0:
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, mem[440 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                            if not block.timestamp:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                        else:
                            mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[408]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 487 len 22]
                    emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, 0, msg.sender);
                else:
                    if ext_call.return_data[0]:
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[440 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                            if not block.timestamp:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                        else:
                            mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[408]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 487 len 22]
                    emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, ext_call.return_data[0], 0, msg.sender);
            else:
                if not extraSpins[address(msg.sender)]:
                    return 0
                if 1 > extraSpins[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                extraSpins[address(msg.sender)]--
                require stor159.length
                require sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length < stor159.length
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0 < ext_call.return_data[0]:
                    if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0:
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, mem[440 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                            if not block.timestamp:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                        else:
                            mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[408]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 487 len 22]
                    emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, 1, msg.sender);
                else:
                    if ext_call.return_data[0]:
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[440 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                            if not block.timestamp:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                        else:
                            mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[408]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 487 len 22]
                    emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, ext_call.return_data[0], 1, msg.sender);
        else:
            require ext_code.size(faucetAddress)
            call faucetAddress.withdraw(address rg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if freeSpinDelay + lastFreeSpin[address(msg.sender)] < lastFreeSpin[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if freeSpinDelay + lastFreeSpin[address(msg.sender)] <= block.timestamp:
                lastFreeSpin[address(msg.sender)] = block.timestamp
                require stor159.length
                require sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length < stor159.length
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0 < ext_call.return_data[0]:
                    if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0:
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, mem[440 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                            if not block.timestamp:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                        else:
                            mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[408]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 487 len 22]
                    emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, 0, msg.sender);
                else:
                    if ext_call.return_data[0]:
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[440 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                            if not block.timestamp:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                        else:
                            mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[408]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 487 len 22]
                    emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, ext_call.return_data[0], 0, msg.sender);
            else:
                if not extraSpins[address(msg.sender)]:
                    return 0
                if 1 > extraSpins[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                extraSpins[address(msg.sender)]--
                require stor159.length
                require sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length < stor159.length
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0 >= ext_call.return_data[0]:
                    if ext_call.return_data[0]:
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[440 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                            if not block.timestamp:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                        else:
                            mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[408]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 487 len 22]
                    emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, ext_call.return_data[0], 1, msg.sender);
                else:
                    if not stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0:
                        emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, 1, msg.sender);
                    else:
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[376 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_32
                        mem[440 len 0] = 0
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, mem[440 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96
                            if not block.timestamp:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[486 len 22]
                            emit Spin(address rg1, uint256 rg2, uint256 rg3, bool rg4):
                                      stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0,
                                      stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0,
                                      0,
                                      1,
                                      msg.sender,
                        else:
                            mem[408 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[408]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 487 len 22]
                            emit Spin(stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0, 1, msg.sender);
    return 1, stor159[sha3(block.timestamp, block.difficulty, Mask(160, 96, msg.sender) >> 96) % stor159.length].field_0
}



}
