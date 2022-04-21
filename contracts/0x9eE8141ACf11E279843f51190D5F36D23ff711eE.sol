contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - restartProvableQuery()
#  - startGame()
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor151;
address stor152;
array of uint256 stor153;
mapping of uint256 stor154;
uint8 stor156;
address lotteryTokenAddress;
uint256 participationFee;
array of uint256 oracleIpfsHash;
uint256 provableGasLimit;
address marketingFeeCollectorAddress;
uint256 marketingFeePercents;
uint256 marketingFeeDivider;
uint256 gameDuration;

function oracleIpfsHash() {
    return oracleIpfsHash[0 len oracleIpfsHash.length]
}

function provableGasLimit() {
    return provableGasLimit
}

function marketingFeeCollector() {
    return marketingFeeCollectorAddress
}

function marketingFeePercents() {
    return marketingFeePercents
}

function owner() {
    return owner
}

function lotteryToken() {
    return lotteryTokenAddress
}

function participationFee() {
    return participationFee
}

function gameDuration() {
    return gameDuration
}

function marketingFeeDivider() {
    return marketingFeeDivider
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

function setGameDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gameDuration = arg1
}

function setProvableGasLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    provableGasLimit = arg1
}

function setParticipationFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if participationFee == arg1:
        revert with 0, 'new participation fee is same'
    participationFee = arg1
}

function lockTransfer() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(lotteryTokenAddress)
    call lotteryTokenAddress.0x1a9aea0a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unlockTransfer() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(lotteryTokenAddress)
    call lotteryTokenAddress.0xbf6d9abd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMarketingFeePercents(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= marketingFeeDivider:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketing fee cannot be bigger than 100%'
    marketingFeePercents = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setOracleIpfsHash(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracleIpfsHash[] = Array(len=arg1.length, data=arg1[all])
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    require arg3 + arg3.length + 36 <= calldata.size
    stor154[0] = 0
}

function toAsciiString(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require (2 * idx) + 2 < 42
        mem[(2 * idx) + 130 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        require (2 * idx) + 3 < 42
        mem[(2 * idx) + 131 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        idx = idx + 1
        continue 
    return 32, 42, mem[160 len 42], 0
}

function initialize(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        lotteryTokenAddress = arg1
        marketingFeeCollectorAddress = arg2
        marketingFeePercents = 2000
        marketingFeeDivider = 100000
        provableGasLimit = 400000
        participationFee = arg3
        stor156 = 1
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            lotteryTokenAddress = arg1
            marketingFeeCollectorAddress = arg2
            marketingFeePercents = 2000
            marketingFeeDivider = 100000
            provableGasLimit = 400000
            participationFee = arg3
            stor156 = 1
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            lotteryTokenAddress = arg1
            marketingFeeCollectorAddress = arg2
            marketingFeePercents = 2000
            marketingFeeDivider = 100000
            provableGasLimit = 400000
            participationFee = arg3
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                stor156 = 1
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if uint8(stor0.field_8):
                    stor156 = 1
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    stor156 = 1
                    Mask(248, 0, stor0.field_8) = 0
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            Mask(248, 0, stor0.field_8) = 1
                            uint8(stor0.field_0) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                            else:
                                Mask(248, 0, stor0.field_8) = 1
                                uint8(stor0.field_0) = 1
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                Mask(248, 0, stor0.field_8) = 0
                                Mask(248, 0, stor0.field_8) = 0
                                Mask(248, 0, stor0.field_8) = 0
}

function setGasPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor152:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor152 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor153.length) = 0
            stor153.length.field_1 = 11
            stor153.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor153.length + 31 / 32 > idx:
                stor153[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor152 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor153.length) = 0
                stor153.length.field_1 = 12
                stor153.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor153.length + 31 / 32 > idx:
                    stor153[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor152 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor153.length) = 0
                    stor153.length.field_1 = 9
                    stor153.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor153.length + 31 / 32 > idx:
                        stor153[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                        stor152 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor153.length) = 0
                        stor153.length.field_1 = 11
                        stor153.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor153.length + 31 / 32 > idx:
                            stor153[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xa2998efd205fb9d4b4963afb70778d6354ad3a41) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor152 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor152 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor152 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor152 = 0xa2998efd205fb9d4b4963afb70778d6354ad3a41
                            bool(stor153.length) = 0
                            stor153.length.field_1 = 10
                            stor153.length.field_8 = 'eth_goerli' / 256
                            idx = 0
                            while stor153.length + 31 / 32 > idx:
                                stor153[idx].field_0 = 0
                                idx = idx + 1
                                continue 
    else:
        if not ext_code.size(stor152):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor152 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor153.length) = 0
                stor153.length.field_1 = 11
                stor153.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor153.length + 31 / 32 > idx:
                    stor153[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor152 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor153.length) = 0
                    stor153.length.field_1 = 12
                    stor153.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor153.length + 31 / 32 > idx:
                        stor153[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor152 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor153.length) = 0
                        stor153.length.field_1 = 9
                        stor153.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor153.length + 31 / 32 > idx:
                            stor153[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                            stor152 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor153.length) = 0
                            stor153.length.field_1 = 11
                            stor153.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor153.length + 31 / 32 > idx:
                                stor153[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0xa2998efd205fb9d4b4963afb70778d6354ad3a41) <= 0:
                                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                    stor152 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                else:
                                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                        stor152 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    else:
                                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                            stor152 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            else:
                                stor152 = 0xa2998efd205fb9d4b4963afb70778d6354ad3a41
                                bool(stor153.length) = 0
                                stor153.length.field_1 = 10
                                stor153.length.field_8 = 'eth_goerli' / 256
                                idx = 0
                                while stor153.length + 31 / 32 > idx:
                                    stor153[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
    require ext_code.size(stor152)
    call stor152.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor151 != ext_call.return_data[12 len 20]:
        require ext_code.size(stor152)
        call stor152.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor151 = ext_call.return_data[12 len 20]
    require ext_code.size(stor151)
    call stor151.setCustomGasPrice(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
