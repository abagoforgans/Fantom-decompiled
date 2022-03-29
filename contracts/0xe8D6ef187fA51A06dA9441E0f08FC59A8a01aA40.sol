contract main {




// =====================  Runtime code  =====================


#
#  - transferToken(address arg1, uint256 arg2)
#
const getBridgeMode = Mask(32, 224, sha3(Mask(112, 32, 'nft-to-nft-amb') >> 32))

const getBridgeInterfacesVersion = 1, 0, 0


mapping of uint256 deployedAtBlock;
mapping of address mediatorContractOnOtherSide;
array of uint256 stor3;
mapping of uint8 stor4;

function isInitialized() {
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}

function mediatorContractOnOtherSide() {
    return mediatorContractOnOtherSide[uint128('mediatorContract', 0)]
}

function owner() {
    return mediatorContractOnOtherSide['owner']
}

function messageHashFixed(bytes32 arg1) {
    return bool(stor4['messageHashFixed'][uint128(arg1)][uint128(arg1)])
}

function deployedAtBlock() {
    return deployedAtBlock[Mask(120, 0, 'deployedAtBlock', 0)]
}

function requestGasLimit() {
    return deployedAtBlock['requestGasLimit']
}

function bridgeContract() {
    return mediatorContractOnOtherSide['bridgeContract']
}

function erc721token() {
    return mediatorContractOnOtherSide['erc721token']
}

function _fallback() payable {
    revert
}

function setMediatorContractOnOtherSide(address arg1) {
    require msg.sender == mediatorContractOnOtherSide['owner']
    mediatorContractOnOtherSide['mediatorContract'] = arg1
}

function setBridgeContract(address arg1) {
    require msg.sender == mediatorContractOnOtherSide['owner']
    require ext_code.size(arg1) > 0
    mediatorContractOnOtherSide[Mask(112, 0, 'bridgeContract', 0)] = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == mediatorContractOnOtherSide['owner']
    require arg1
    emit OwnershipTransferred(mediatorContractOnOtherSide['owner'], address(arg1));
    mediatorContractOnOtherSide['owner'] = arg1
}

function setRequestGasLimit(uint256 arg1) {
    require msg.sender == mediatorContractOnOtherSide['owner']
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0xe5789d03 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    deployedAtBlock[Mask(120, 0, 'requestGasLimit', 0)] = arg1
}

function handleBridgedTokens(address arg1, uint256 arg2, bytes32 arg3) {
    require msg.sender == mediatorContractOnOtherSide['bridgeContract']
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0xd67bdd25 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == mediatorContractOnOtherSide[uint128('mediatorContract', 0)]
    require ext_code.size(mediatorContractOnOtherSide['erc721token'])
    call mediatorContractOnOtherSide['erc721token'].0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function fixFailedMessage(bytes32 arg1) {
    require msg.sender == mediatorContractOnOtherSide['bridgeContract']
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0xd67bdd25 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == mediatorContractOnOtherSide[uint128('mediatorContract', 0)]
    require not stor4['messageHashFixed'][uint128(arg1)][uint128(arg1)]
    stor4['messageHashFixed'][uint128(arg1)][uint128(arg1)] = 1
    require ext_code.size(mediatorContractOnOtherSide['erc721token'])
    call mediatorContractOnOtherSide['erc721token'].0xa9059cbb with:
         gas gas_remaining wei
        args mediatorContractOnOtherSide['messageHashRecipient'][arg1], deployedAtBlock['messageHashTokenId'][arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FailedMessageFixed(mediatorContractOnOtherSide['messageHashRecipient'][arg1], deployedAtBlock['messageHashTokenId'][arg1], arg1);
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, address arg5) {
    require not stor4[Mask(104, 0, 'isInitialized', 0)]
    require ext_code.size(arg1) > 0
    mediatorContractOnOtherSide[Mask(112, 0, 'bridgeContract', 0)] = arg1
    mediatorContractOnOtherSide['mediatorContract'] = arg2
    require ext_code.size(arg3) > 0
    mediatorContractOnOtherSide['erc721token'] = arg3
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0xe5789d03 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 <= ext_call.return_data[0]
    deployedAtBlock[Mask(120, 0, 'requestGasLimit', 0)] = arg4
    emit OwnershipTransferred(mediatorContractOnOtherSide['owner'], arg5);
    mediatorContractOnOtherSide['owner'] = arg5
    mem[529] = sha3(Mask(160, 96, uint64(this.address), 0, 0) >> 96)
    mem[593] = 'nonce'
    mem[561] = 5
    mem[598 len 0] = None
    mem[603 len 27] = Mask(176, 0, 'nonce'), mem[625 len 5]
    mem[598 len 5] = 'nonce', 0 % 1099511627776
    stor3['nonce', 0 % 1099511627776][] = Array(len=uint64(this.address), 0, 0, data=mem[529 len uint64(this.address), 0, 0])
    stor4[Mask(104, 0, 'isInitialized', 0)] = 1
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}

function claimTokens(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.0x6fde8202 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            create contract with ('balance', 'address') wei
                            code: code.data[9093 len 33], arg2
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[132] = arg2
        mem[164] = ext_call.return_data[0]
        mem[96] = 68
        mem[64] = 196
        mem[132 len 28] = address(arg2) << 64
        mem[128 len 4] = unknown_0xa9059cbb(?????)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2) << 64, 0, ext_call.return_data[0]
        mem[0] = ext_call.return_data[0]
        require ext_call.success
        if mem[ext_call.return_data[0]] > 0:
            require ext_call.return_data[0]
}

function requestFailedMessageFix(bytes32 arg1) {
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0xcb08a10c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0x3f9a8e7e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0x4a610b04 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == mediatorContractOnOtherSide[uint128('mediatorContract', 0)]
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0xe37c3289 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].0xdc8601b3 with:
         gas gas_remaining wei
        args mediatorContractOnOtherSide[uint128('mediatorContract', 0)], 96, deployedAtBlock['requestGasLimit'], 36, fixFailedMessage(bytes32 rg1), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0, Mask(32, -256, fixFailedMessage(bytes32 rg1), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0) << 256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
