contract main {




// =====================  Runtime code  =====================


#
#  - transferWithCode(uint256 arg1, string arg2, address arg3, uint256 arg4, bytes arg5)
#  - sub_3b442cdb(?)
#  - sub_e94b7706(?)
#  - buyWithPaymentOnly(address arg1, uint256 arg2, string arg3)
#
address paymentAddress;
mapping of uint8 stor2;
mapping of uint256 chainBalances;
address owner;
array of uint256 metadataBaseUri;
uint8 stor6;
address nftAddress; offset 8
address recipientAddress;
uint256 price;
uint8 shouldBurn;
uint256 stor9;
mapping of struct stor10;
array of struct stor11;
mapping of uint256 preMintCount;
mapping of struct stor13;
mapping of struct stor14;
mapping of uint256 preTransferCount;
mapping of uint8 stor19;
mapping of uint8 stor20;

function initialized() {
    return bool(stor6)
}

function chainIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function shouldBurn() {
    return bool(uint8(shouldBurn))
}

function witnesses(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function metadataBaseUri() {
    return metadataBaseUri[0 len metadataBaseUri.length]
}

function recipientAddress() {
    return recipientAddress
}

function nftAddress() {
    return nftAddress
}

function paymentAddress() {
    return paymentAddress
}

function chainBalances(uint256 arg1) {
    require calldata.size - 4 >= 32
    return chainBalances[arg1]
}

function getOwner() {
    return owner
}

function price() {
    return price
}

function getPreTransferCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    return preTransferCount[arg1]
}

function getPreMintCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return preMintCount[address(arg1)]
}

function _fallback() payable {
    revert
}

function toggleShouldBurn() {
    uint256(stor9) = not uint8(shouldBurn) or Mask(248, 8, uint256(stor9))
}

function addChainId(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2[arg1] = 1
    return 1
}

function removeChainId(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2[arg1] = 0
    return 1
}

function changeNft(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    nftAddress = arg1
}

function changePayment(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    paymentAddress = arg1
}

function addWitness(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor19[address(arg1)] = 1
}

function changeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    recipientAddress = arg1
}

function removeWitness(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor19[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function getHash(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return sha3(arg1[all])
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(nftAddress)
    call nftAddress.burn(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPaymentDecimals() {
    require ext_code.size(paymentAddress)
    staticcall paymentAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function transferNftOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(nftAddress)
    call nftAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferPaymentOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(paymentAddress)
    call paymentAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPreTransfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[320] = stor13[arg1].field_0
    idx = 320
    s = 0
    while stor13[arg1].length + 320 > idx + 32:
        mem[idx + 32] = stor13[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 96, stor13[arg1].field_256, stor13[arg1].field_512, stor13[arg1].length, mem[320 len ceil32(stor13[arg1].length)]
}

function asciiToInteger(bytes32 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < 32:
        if uint8(Mask(256, -8 * idx, arg1) >> 8 * idx) < 48:
            return s
        if uint8(Mask(256, -8 * idx, arg1) >> 8 * idx) > 57:
            return s
        idx = idx + 1
        s = s - (48 * 10^idx) + (uint8(Mask(256, -8 * idx, arg1) >> 8 * idx) * 10^idx)
        continue 
    return 0
}

function toString(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[256 len 66] = call.data[calldata.size len 66]
    idx = 0
    while idx < 32:
        require idx < 32
        require (2 * idx) + 2 < 66
        mem[(2 * idx) + 258 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx < 32
        require (2 * idx) + 3 < 66
        mem[(2 * idx) + 259 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    return 32, 66, mem[320 len 66], 0
}

function toString(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[256 len 66] = call.data[calldata.size len 66]
    idx = 0
    while idx < 32:
        require idx < 32
        require (2 * idx) + 2 < 66
        mem[(2 * idx) + 258 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx < 32
        require (2 * idx) + 3 < 66
        mem[(2 * idx) + 259 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    return 32, 66, mem[320 len 66], 0
}

function changePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(paymentAddress)
    staticcall paymentAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    price = 10^ext_call.return_data[31 len 1] * arg1
}

function getPreTransferByIndex(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[320] = stor14[arg1][arg2].field_0
    idx = 320
    s = 0
    while stor14[arg1][arg2].length + 320 > idx + 32:
        mem[idx + 32] = stor14[arg1][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 96, 
           stor14[arg1][arg2].field_256,
           stor14[arg1][arg2].field_512,
           stor14[arg1][arg2].length,
           mem[320 len ceil32(stor14[arg1][arg2].length)]
}

function toString(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[244 len 42] = call.data[calldata.size len 42]
    idx = 0
    while idx < 20:
        require idx < 20
        require (2 * idx) + 2 < 42
        mem[(2 * idx) + 246 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx < 20
        require (2 * idx) + 3 < 42
        mem[(2 * idx) + 247 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    return 32, 42, mem[276 len 42], 0
}

function getPreMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[256] = stor10[address(arg1)][arg2].field_0
    idx = 256
    s = 0
    while stor10[address(arg1)][arg2].length + 256 > idx + 32:
        mem[idx + 32] = stor10[address(arg1)][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 64, 
           stor10[address(arg1)][arg2].field_256,
           stor10[address(arg1)][arg2].length,
           mem[256 len ceil32(stor10[address(arg1)][arg2].length)]
}

function getPreMintByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[256] = stor11[address(arg1)][arg2].field_0
    idx = 256
    s = 0
    while stor11[address(arg1)][arg2].length + 256 > idx + 32:
        mem[idx + 32] = stor11[address(arg1)][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 64, 
           stor11[address(arg1)][arg2].field_256,
           stor11[address(arg1)][arg2].length,
           mem[256 len ceil32(stor11[address(arg1)][arg2].length)]
}

function updateTokenUri(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(nftAddress)
    call nftAddress with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeMetadataBaseUri(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    metadataBaseUri.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        metadataBaseUri[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while metadataBaseUri.length + 31 / 32 > idx:
        metadataBaseUri[idx] = 0
        idx = idx + 1
        continue 
}

function transferFromChain(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg3 > chainBalances[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not transfer more than deposited'
    if not stor2[arg2]:
        revert with 0, 'Invalid Chain ID'
    require ext_code.size(paymentAddress)
    call paymentAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 > chainBalances[arg2]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    chainBalances[arg2] -= arg3
    emit BridgeWithdrawal(arg2, msg.sender, arg3);
    return 1
}

function deletePreTransfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor13[arg1].field_512 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PreTransfer does not belong to sender'
    stor14[arg1][stor15[arg1]].field_0 = 0
    if 31 < stor14[arg1][stor15[arg1]].length:
        idx = 0
        while stor14[arg1][stor15[arg1]].length + 31 / 32 > idx:
            stor14[arg1][stor15[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor14[arg1][stor15[arg1]].field_256 = 0
    stor14[arg1][stor15[arg1]].field_512 = 0
    if 1 > preTransferCount[arg1]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    preTransferCount[arg1]--
    stor13[arg1].field_0 = 0
    if 31 < stor13[arg1].length:
        idx = 0
        while stor13[arg1].length + 31 / 32 > idx:
            stor13[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor13[arg1].field_256 = 0
    stor13[arg1].field_512 = 0
}

function deletePreMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor11[address(arg1)][stor12[address(arg1)]].field_0 = 0
    if 31 < stor11[address(arg1)][stor12[address(arg1)]].length:
        idx = 0
        while stor11[address(arg1)][stor12[address(arg1)]].length + 31 / 32 > idx:
            stor11[address(arg1)][stor12[address(arg1)]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor11[address(arg1)][stor12[address(arg1)]].field_256 = 0
    if 1 > preMintCount[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    preMintCount[address(arg1)]--
    stor10[address(arg1)][arg2].field_0 = 0
    if 31 < stor10[address(arg1)][arg2].length:
        idx = 0
        while stor10[address(arg1)][arg2].length + 31 / 32 > idx:
            stor10[address(arg1)][arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor10[address(arg1)][arg2].field_256 = 0
}

function mint(address arg1, uint256 arg2, string arg3, string arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[ceil32(arg3.length) + 260] = arg4.length
    mem[ceil32(arg3.length) + 292 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 292] = 0
    require ext_code.size(nftAddress)
    call nftAddress.0x2fb102cf with:
         gas gas_remaining wei
        args 0, 0, arg2, 128, ceil32(arg3.length) + 160, arg3.length, arg3[all], 0, mem[arg3.length + 292 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeName(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[ceil32(arg1.length) + 196] = arg2.length
    mem[ceil32(arg1.length) + 228 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 228] = 0
    require ext_code.size(nftAddress)
    call nftAddress.0x86575e40 with:
         gas gas_remaining wei
        args 0, 64, ceil32(arg1.length) + 96, arg1.length, arg1[all], 0, mem[arg1.length + 228 len ceil32(arg1.length) - arg1.length], arg2[all], mem[ceil32(arg1.length) + arg2.length + 228 len ceil32(arg2.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_79d33606(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        revert with 0, 'Require correct length'
    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
        revert with 0, 'Signature version not match'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Signature version not match'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function toString(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require (2 * arg1.length) + 2 <= test266151307()
    if (2 * arg1.length) + 2:
        mem[ceil32(arg1.length) + 224 len (2 * arg1.length) + 2] = call.data[calldata.size len (2 * arg1.length) + 2]
    require 0 < (2 * arg1.length) + 2
    require 1 < (2 * arg1.length) + 2
    mem[ceil32(arg1.length) + 225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require 2 * idx < 2 * arg1.length
        mem[(2 * idx) + ceil32(arg1.length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx < arg1.length
        require (2 * idx) + 3 < (2 * arg1.length) + 2
        mem[(2 * idx) + ceil32(arg1.length) + 227 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    return 32, (2 * arg1.length) + 2, 0, mem[ceil32(arg1.length) + 225 len floor32((2 * arg1.length) + 33) - 1]
}

function transferToChain(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor2[arg1]:
        revert with 0, 'Invalid Chain ID'
    require ext_code.size(paymentAddress)
    staticcall paymentAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Handler unable to spend '
    require ext_code.size(paymentAddress)
    call paymentAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer ERROR'
    require ext_code.size(paymentAddress)
    call paymentAddress.burn(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 + chainBalances[arg1] < chainBalances[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    chainBalances[arg1] += arg2
    emit BridgeDeposit(arg1, msg.sender, arg2);
    return 1
}

function checkPreMintImage(string arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 160] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[arg1.length + ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = 0
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash, arg2, hash == arg2
}

function checkPreTransferImage(string arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 160] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[arg1.length + ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = 0
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash, arg2, hash == arg2
}

function addPreTransfer(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    mem[128] = stor13[arg1].field_0
    idx = 128
    s = 0
    while stor13[arg1].length + 96 > idx:
        mem[idx + 32] = stor13[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[128 len stor13[arg1].length]) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Duplicate PreTransfer'
    if preTransferCount[arg1] + 1 < preTransferCount[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    preTransferCount[arg1]++
    stor13[arg1].field_0 = 0
    stor13[arg1].field_1 = 7
    stor13[arg1].field_8 = 0x7061796c6f6164000000000000000000000000000000000000000000000000
    idx = 0
    while stor13[arg1].length + 31 / 32 > idx:
        stor13[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13[arg1].field_256 = arg2
    stor13[arg1].field_512 = msg.sender
    if 31 >= stor13[arg1].length:
        stor14[arg1][stor15[arg1]].field_0 = stor13[arg1].field_0
        idx = 0
        while stor14[arg1][stor15[arg1]].length + 31 / 32 > idx:
            stor14[arg1][stor15[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor14[arg1][stor15[arg1]].field_0 = Mask(255, 1, stor13[arg1].field_0 and (256 * not stor13[arg1].field_0) - 1) + 1
        if not Mask(255, 1, stor13[arg1].field_0 and (256 * not stor13[arg1].field_0) - 1):
            idx = 0
            while stor14[arg1][stor15[arg1]].length + 31 / 32 > idx:
                stor14[arg1][stor15[arg1]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor13[arg1].length + 31 / 32 > idx:
                stor14[arg1][stor15[arg1]][s].field_0 = stor13[arg1][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor13[arg1].length + 31 / 32
            while stor14[arg1][stor15[arg1]].length + 31 / 32 > idx:
                stor14[arg1][stor15[arg1]][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor14[arg1][stor15[arg1]].field_256 = stor13[arg1].field_256
    stor14[arg1][stor15[arg1]].field_512 = stor13[arg1].field_512
}

function addPreMint(address arg1, string arg2, uint256 arg3, bytes32 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96] = 0x9ad9523200000000000000000000000000000000000000000000000000000000
    mem[100] = arg3
    require ext_code.size(nftAddress)
    staticcall nftAddress.tokenPayload(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if ext_call.success:
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 127 < return_data.size + 96
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= test266151307()
        require ceil32(mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 128 <= test266151307()
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] + 32 <= return_data.size
        revert with 0, 'NFT Exists with this ID'
    mem[128] = stor10[address(arg1)][arg3].field_0
    idx = 128
    s = 0
    while stor10[address(arg1)][arg3].length + 96 > idx:
        mem[idx + 32] = stor10[address(arg1)][arg3][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[128 len stor10[address(arg1)][arg3].length]) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Duplicate PreMint'
    if preMintCount[address(arg1)] + 1 < preMintCount[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    preMintCount[address(arg1)]++
    stor10[address(arg1)][arg3][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor10[address(arg1)][arg3].field_256 = arg4
    if 31 >= stor10[address(arg1)][arg3].length:
        stor11[address(arg1)][stor12[address(arg1)]].field_0 = stor10[address(arg1)][arg3].field_0
        idx = 0
        while stor11[address(arg1)][stor12[address(arg1)]].length + 31 / 32 > idx:
            stor11[address(arg1)][stor12[address(arg1)]][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor11[address(arg1)][stor12[address(arg1)]].field_0 = Mask(255, 1, (256 * not stor10[address(arg1)][arg3].field_0) - 1 and stor10[address(arg1)][arg3].field_0) + 1
        if not Mask(255, 1, (256 * not stor10[address(arg1)][arg3].field_0) - 1 and stor10[address(arg1)][arg3].field_0):
            idx = 0
            while stor11[address(arg1)][stor12[address(arg1)]].length + 31 / 32 > idx:
                stor11[address(arg1)][stor12[address(arg1)]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor10[address(arg1)][arg3].length + 31 / 32 > idx:
                stor11[address(arg1)][stor12[address(arg1)]][s].field_0 = stor10[address(arg1)][arg3][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor10[address(arg1)][arg3].length + 31 / 32
            while stor11[address(arg1)][stor12[address(arg1)]].length + 31 / 32 > idx:
                stor11[address(arg1)][stor12[address(arg1)]][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor11[address(arg1)][stor12[address(arg1)]].field_256 = stor10[address(arg1)][arg3].field_256
}

function getAddressFromSignature(uint256 arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[0] = arg2
    mem[32] = 20
    require not stor20[arg2]
    if arg1:
        s = 0
        idx = arg1
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[ceil32(arg3.length) + 128] = s
        if not s:
            t = s - 1
            idx = arg1
            while idx:
                require t < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[t + ceil32(arg3.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if arg2:
                t = 0
                idx = arg2
                while idx:
                    t = t + 1
                    idx = idx / 10
                    continue 
                require t <= test266151307()
                mem[ceil32(arg3.length) + ceil32(s) + 160] = t
                if not t:
                    u = t - 1
                    idx = arg2
                    while idx:
                        require u < t
                        mem[u + ceil32(arg3.length) + ceil32(s) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        u = u - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224 len ceil32(t)] = mem[ceil32(arg3.length) + ceil32(s) + 192 len ceil32(t)]
                        if ceil32(t) <= t:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19359 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19359) > _19359:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19359 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19359
                            mem[64] = _19359 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19359])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19439 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19439) > _19439:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19439 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19439
                            mem[64] = _19439 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19439])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224] = 0
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224 len ceil32(t)] = mem[ceil32(arg3.length) + ceil32(s) + 192 len ceil32(t)]
                        if ceil32(t) <= t:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19361 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19361) > _19361:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19361 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19361
                            mem[64] = _19361 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19361])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19440 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19440) > _19440:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19440 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19440
                            mem[64] = _19440 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19440])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                else:
                    mem[ceil32(arg3.length) + ceil32(s) + 192 len t] = call.data[calldata.size len t]
                    u = t - 1
                    idx = arg2
                    while idx:
                        require u < t
                        mem[u + ceil32(arg3.length) + ceil32(s) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        u = u - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224 len ceil32(t)] = mem[ceil32(arg3.length) + ceil32(s) + 192 len ceil32(t)]
                        if ceil32(t) <= t:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19363 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19363) > _19363:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19363 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19363
                            mem[64] = _19363 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19363])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19441 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19441) > _19441:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19441 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19441
                            mem[64] = _19441 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19441])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224] = 0
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224 len ceil32(t)] = mem[ceil32(arg3.length) + ceil32(s) + 192 len ceil32(t)]
                        if ceil32(t) <= t:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19365 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19365) > _19365:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19365 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19365
                            mem[64] = _19365 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19365])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19442 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19442) > _19442:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19442 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19442
                            mem[64] = _19442 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19442])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            else:
                mem[ceil32(arg3.length) + ceil32(s) + 160] = 1
                mem[ceil32(arg3.length) + ceil32(s) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(s) + 256 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257] = 0
                mem[ceil32(arg3.length) + ceil32(s) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 1
                if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                    _10465 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 1
                    mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 32)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 32)]
                    if ceil32(_10465) <= _10465:
                        _14648 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257] = _10465
                        mem[64] = _10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289
                        _14650 = sha3(mem[_14648 + 32 len mem[_14648]])
                        if arg3.length != 65:
                            revert with 0, 'Require correct length'
                        _14766 = mem[128]
                        _14767 = mem[160]
                        _14768 = mem[192]
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                            revert with 0, 'Signature version not match'
                        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14650
                            _19051 = _10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19051 + 32 len mem[_19051]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14768')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14768')), 0) - 256) + 27 << 248, _14766, _14767) 
                        else:
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                revert with 0, 'Signature version not match'
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14650
                            _19056 = _10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19056 + 32 len mem[_19056]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14768')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14768')), 0) - 256) + 27 << 248, _14766, _14767) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _10465 + 289] = 0
                        _14700 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257] = _10465
                        mem[64] = _10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289
                        _14702 = sha3(mem[_14700 + 32 len mem[_14700]])
                        if arg3.length != 65:
                            revert with 0, 'Require correct length'
                        _14849 = mem[128]
                        _14850 = mem[160]
                        _14851 = mem[192]
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                            revert with 0, 'Signature version not match'
                        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14702
                            _19061 = _10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19061 + 32 len mem[_19061]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14851')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14851')), 0) - 256) + 27 << 248, _14849, _14850) 
                        else:
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                revert with 0, 'Signature version not match'
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14702
                            _19066 = _10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10465 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19066 + 32 len mem[_19066]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14851')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14851')), 0) - 256) + 27 << 248, _14849, _14850) 
                else:
                    _10466 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 1
                    mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 32)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 32)]
                    if ceil32(_10466) <= _10466:
                        _14654 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257] = _10466
                        mem[64] = _10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289
                        _14656 = sha3(mem[_14654 + 32 len mem[_14654]])
                        if arg3.length != 65:
                            revert with 0, 'Require correct length'
                        _14776 = mem[128]
                        _14777 = mem[160]
                        _14778 = mem[192]
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                            revert with 0, 'Signature version not match'
                        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14656
                            _19091 = _10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19091 + 32 len mem[_19091]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14778')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14778')), 0) - 256) + 27 << 248, _14776, _14777) 
                        else:
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                revert with 0, 'Signature version not match'
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14656
                            _19096 = _10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19096 + 32 len mem[_19096]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14778')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14778')), 0) - 256) + 27 << 248, _14776, _14777) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _10466 + 289] = 0
                        _14708 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257] = _10466
                        mem[64] = _10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289
                        _14710 = sha3(mem[_14708 + 32 len mem[_14708]])
                        if arg3.length != 65:
                            revert with 0, 'Require correct length'
                        _14857 = mem[128]
                        _14858 = mem[160]
                        _14859 = mem[192]
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                            revert with 0, 'Signature version not match'
                        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14710
                            _19101 = _10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19101 + 32 len mem[_19101]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14859')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14859')), 0) - 256) + 27 << 248, _14857, _14858) 
                        else:
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                revert with 0, 'Signature version not match'
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14710
                            _19106 = _10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10466 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19106 + 32 len mem[_19106]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14859')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14859')), 0) - 256) + 27 << 248, _14857, _14858) 
        else:
            mem[ceil32(arg3.length) + 160 len s] = call.data[calldata.size len s]
            t = s - 1
            idx = arg1
            while idx:
                require t < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[t + ceil32(arg3.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if arg2:
                t = 0
                idx = arg2
                while idx:
                    t = t + 1
                    idx = idx / 10
                    continue 
                require t <= test266151307()
                mem[ceil32(arg3.length) + ceil32(s) + 160] = t
                if not t:
                    u = t - 1
                    idx = arg2
                    while idx:
                        require u < t
                        mem[u + ceil32(arg3.length) + ceil32(s) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        u = u - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224 len ceil32(t)] = mem[ceil32(arg3.length) + ceil32(s) + 192 len ceil32(t)]
                        if ceil32(t) <= t:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19383 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19383) > _19383:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19383 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19383
                            mem[64] = _19383 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19383])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19491 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19491) > _19491:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19491 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19491
                            mem[64] = _19491 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19491])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224] = 0
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224 len ceil32(t)] = mem[ceil32(arg3.length) + ceil32(s) + 192 len ceil32(t)]
                        if ceil32(t) <= t:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19385 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19385) > _19385:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19385 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19385
                            mem[64] = _19385 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19385])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19492 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19492) > _19492:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19492 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19492
                            mem[64] = _19492 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19492])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                else:
                    mem[ceil32(arg3.length) + ceil32(s) + 192 len t] = call.data[calldata.size len t]
                    u = t - 1
                    idx = arg2
                    while idx:
                        require u < t
                        mem[u + ceil32(arg3.length) + ceil32(s) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        u = u - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224 len ceil32(t)] = mem[ceil32(arg3.length) + ceil32(s) + 192 len ceil32(t)]
                        if ceil32(t) <= t:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19387 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19387) > _19387:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19387 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19387
                            mem[64] = _19387 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19387])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19493 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19493) > _19493:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19493 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19493
                            mem[64] = _19493 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19493])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224] = 0
                        mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224 len ceil32(t)] = mem[ceil32(arg3.length) + ceil32(s) + 192 len ceil32(t)]
                        if ceil32(t) <= t:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19389 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19389) > _19389:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19389 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19389
                            mem[64] = _19389 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19389])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            _19494 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)] = mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 31)]
                            if ceil32(_19494) > _19494:
                                mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + _19494 + 256] = 0
                            mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 224] = _19494
                            mem[64] = _19494 + ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + ceil32(s) + ceil32(t) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + t + 256 len _19494])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            else:
                mem[ceil32(arg3.length) + ceil32(s) + 160] = 1
                mem[ceil32(arg3.length) + ceil32(s) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(s) + 256 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257] = 0
                mem[ceil32(arg3.length) + ceil32(s) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 1
                if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                    _10469 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 1
                    mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 32)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 32)]
                    if ceil32(_10469) <= _10469:
                        _14662 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257] = _10469
                        mem[64] = _10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289
                        _14664 = sha3(mem[_14662 + 32 len mem[_14662]])
                        if arg3.length != 65:
                            revert with 0, 'Require correct length'
                        _14788 = mem[128]
                        _14789 = mem[160]
                        _14790 = mem[192]
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                            revert with 0, 'Signature version not match'
                        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14664
                            _19139 = _10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19139 + 32 len mem[_19139]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14790')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14790')), 0) - 256) + 27 << 248, _14788, _14789) 
                        else:
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                revert with 0, 'Signature version not match'
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14664
                            _19144 = _10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19144 + 32 len mem[_19144]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14790')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14790')), 0) - 256) + 27 << 248, _14788, _14789) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _10469 + 289] = 0
                        _14716 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257] = _10469
                        mem[64] = _10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289
                        _14718 = sha3(mem[_14716 + 32 len mem[_14716]])
                        if arg3.length != 65:
                            revert with 0, 'Require correct length'
                        _14867 = mem[128]
                        _14868 = mem[160]
                        _14869 = mem[192]
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                            revert with 0, 'Signature version not match'
                        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14718
                            _19149 = _10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19149 + 32 len mem[_19149]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14869')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14869')), 0) - 256) + 27 << 248, _14867, _14868) 
                        else:
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                revert with 0, 'Signature version not match'
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14718
                            _19154 = _10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10469 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19154 + 32 len mem[_19154]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14869')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14869')), 0) - 256) + 27 << 248, _14867, _14868) 
                else:
                    _10470 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 1
                    mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 32)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 32)]
                    if ceil32(_10470) <= _10470:
                        _14668 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257] = _10470
                        mem[64] = _10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289
                        _14670 = sha3(mem[_14668 + 32 len mem[_14668]])
                        if arg3.length != 65:
                            revert with 0, 'Require correct length'
                        _14798 = mem[128]
                        _14799 = mem[160]
                        _14800 = mem[192]
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                            revert with 0, 'Signature version not match'
                        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14670
                            _19179 = _10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19179 + 32 len mem[_19179]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14800')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14800')), 0) - 256) + 27 << 248, _14798, _14799) 
                        else:
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                revert with 0, 'Signature version not match'
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14670
                            _19184 = _10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19184 + 32 len mem[_19184]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14800')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14800')), 0) - 256) + 27 << 248, _14798, _14799) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + _10470 + 289] = 0
                        _14724 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 257] = _10470
                        mem[64] = _10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289
                        _14726 = sha3(mem[_14724 + 32 len mem[_14724]])
                        if arg3.length != 65:
                            revert with 0, 'Require correct length'
                        _14875 = mem[128]
                        _14876 = mem[160]
                        _14877 = mem[192]
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                            revert with 0, 'Signature version not match'
                        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14726
                            _19189 = _10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19189 + 32 len mem[_19189]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14877')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14877')), 0) - 256) + 27 << 248, _14875, _14876) 
                        else:
                            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                revert with 0, 'Signature version not match'
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 289] = 28
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 321] = '\x19Ethereum Signed Message:\n32'
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 385] = '\x19Ethereum Signed Message:\n32'
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 413] = _14726
                            _19194 = _10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353
                            mem[_10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 353] = 60
                            mem[64] = _10470 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 445
                            signer = erecover(sha3(mem[_19194 + 32 len mem[_19194]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14877')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14877')), 0) - 256) + 27 << 248, _14875, _14876) 
    else:
        mem[ceil32(arg3.length) + 128] = 1
        mem[ceil32(arg3.length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if not arg2:
            mem[ceil32(arg3.length) + 192] = 1
            if arg3.length != 65:
                revert with 0, 'Require correct length'
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                revert with 0, 'Signature version not match'
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                    revert with 0, 'Signature version not match'
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
        else:
            s = 0
            idx = arg2
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[ceil32(arg3.length) + 192] = s
            if not s:
                t = s - 1
                idx = arg2
                while idx:
                    require t < s
                    mem[t + ceil32(arg3.length) + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(arg3.length) + ceil32(s) + 256 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                    mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 256 len ceil32(s)] = mem[ceil32(arg3.length) + 224 len ceil32(s)]
                    if ceil32(s) <= s:
                        mem[ceil32(arg3.length) + ceil32(s) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        _10439 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)]
                        if ceil32(_10439) <= _10439:
                            _14671 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10439
                            mem[64] = _10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14673 = sha3(mem[_14671 + 32 len mem[_14671]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14803 = mem[128]
                            _14804 = mem[160]
                            _14805 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14673
                                _19199 = _10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19199 + 32 len mem[_19199]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14805')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14805')), 0) - 256) + 27 << 248, _14803, _14804) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14673
                                _19204 = _10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19204 + 32 len mem[_19204]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14805')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14805')), 0) - 256) + 27 << 248, _14803, _14804) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + _10439 + 288] = 0
                            _14728 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10439
                            mem[64] = _10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14730 = sha3(mem[_14728 + 32 len mem[_14728]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14879 = mem[128]
                            _14880 = mem[160]
                            _14881 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14730
                                _19209 = _10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19209 + 32 len mem[_19209]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14881')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14881')), 0) - 256) + 27 << 248, _14879, _14880) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14730
                                _19214 = _10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10439 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19214 + 32 len mem[_19214]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14881')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14881')), 0) - 256) + 27 << 248, _14879, _14880) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = 0
                        mem[ceil32(arg3.length) + ceil32(s) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        _10471 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)]
                        if ceil32(_10471) <= _10471:
                            _14674 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10471
                            mem[64] = _10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14676 = sha3(mem[_14674 + 32 len mem[_14674]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14808 = mem[128]
                            _14809 = mem[160]
                            _14810 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14676
                                _19219 = _10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19219 + 32 len mem[_19219]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14810')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14810')), 0) - 256) + 27 << 248, _14808, _14809) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14676
                                _19224 = _10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19224 + 32 len mem[_19224]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14810')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14810')), 0) - 256) + 27 << 248, _14808, _14809) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + _10471 + 288] = 0
                            _14732 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10471
                            mem[64] = _10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14734 = sha3(mem[_14732 + 32 len mem[_14732]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14883 = mem[128]
                            _14884 = mem[160]
                            _14885 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14734
                                _19229 = _10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19229 + 32 len mem[_19229]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14885')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14885')), 0) - 256) + 27 << 248, _14883, _14884) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14734
                                _19234 = _10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10471 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19234 + 32 len mem[_19234]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14885')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14885')), 0) - 256) + 27 << 248, _14883, _14884) 
                else:
                    mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 256] = 0
                    mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 256 len ceil32(s)] = mem[ceil32(arg3.length) + 224 len ceil32(s)]
                    if ceil32(s) <= s:
                        mem[ceil32(arg3.length) + ceil32(s) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        _10441 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)]
                        if ceil32(_10441) <= _10441:
                            _14677 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10441
                            mem[64] = _10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14679 = sha3(mem[_14677 + 32 len mem[_14677]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14813 = mem[128]
                            _14814 = mem[160]
                            _14815 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14679
                                _19239 = _10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19239 + 32 len mem[_19239]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14815')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14815')), 0) - 256) + 27 << 248, _14813, _14814) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14679
                                _19244 = _10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19244 + 32 len mem[_19244]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14815')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14815')), 0) - 256) + 27 << 248, _14813, _14814) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + _10441 + 288] = 0
                            _14736 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10441
                            mem[64] = _10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14738 = sha3(mem[_14736 + 32 len mem[_14736]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14887 = mem[128]
                            _14888 = mem[160]
                            _14889 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14738
                                _19249 = _10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19249 + 32 len mem[_19249]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14889')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14889')), 0) - 256) + 27 << 248, _14887, _14888) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14738
                                _19254 = _10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10441 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19254 + 32 len mem[_19254]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14889')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14889')), 0) - 256) + 27 << 248, _14887, _14888) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = 0
                        mem[ceil32(arg3.length) + ceil32(s) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        _10472 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)]
                        if ceil32(_10472) <= _10472:
                            _14680 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10472
                            mem[64] = _10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14682 = sha3(mem[_14680 + 32 len mem[_14680]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14818 = mem[128]
                            _14819 = mem[160]
                            _14820 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14682
                                _19259 = _10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19259 + 32 len mem[_19259]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14820')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14820')), 0) - 256) + 27 << 248, _14818, _14819) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14682
                                _19264 = _10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19264 + 32 len mem[_19264]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14820')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14820')), 0) - 256) + 27 << 248, _14818, _14819) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + _10472 + 288] = 0
                            _14740 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10472
                            mem[64] = _10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14742 = sha3(mem[_14740 + 32 len mem[_14740]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14891 = mem[128]
                            _14892 = mem[160]
                            _14893 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14742
                                _19269 = _10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19269 + 32 len mem[_19269]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14893')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14893')), 0) - 256) + 27 << 248, _14891, _14892) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14742
                                _19274 = _10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10472 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19274 + 32 len mem[_19274]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14893')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14893')), 0) - 256) + 27 << 248, _14891, _14892) 
            else:
                mem[ceil32(arg3.length) + 224 len s] = call.data[calldata.size len s]
                t = s - 1
                idx = arg2
                while idx:
                    require t < s
                    mem[t + ceil32(arg3.length) + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(arg3.length) + ceil32(s) + 256 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                    mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 256 len ceil32(s)] = mem[ceil32(arg3.length) + 224 len ceil32(s)]
                    if ceil32(s) <= s:
                        mem[ceil32(arg3.length) + ceil32(s) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        _10443 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)]
                        if ceil32(_10443) <= _10443:
                            _14683 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10443
                            mem[64] = _10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14685 = sha3(mem[_14683 + 32 len mem[_14683]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14823 = mem[128]
                            _14824 = mem[160]
                            _14825 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14685
                                _19279 = _10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19279 + 32 len mem[_19279]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14825')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14825')), 0) - 256) + 27 << 248, _14823, _14824) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14685
                                _19284 = _10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19284 + 32 len mem[_19284]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14825')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14825')), 0) - 256) + 27 << 248, _14823, _14824) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + _10443 + 288] = 0
                            _14744 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10443
                            mem[64] = _10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14746 = sha3(mem[_14744 + 32 len mem[_14744]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14895 = mem[128]
                            _14896 = mem[160]
                            _14897 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14746
                                _19289 = _10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19289 + 32 len mem[_19289]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14897')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14897')), 0) - 256) + 27 << 248, _14895, _14896) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14746
                                _19294 = _10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10443 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19294 + 32 len mem[_19294]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14897')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14897')), 0) - 256) + 27 << 248, _14895, _14896) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = 0
                        mem[ceil32(arg3.length) + ceil32(s) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        _10473 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)]
                        if ceil32(_10473) <= _10473:
                            _14686 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10473
                            mem[64] = _10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14688 = sha3(mem[_14686 + 32 len mem[_14686]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14828 = mem[128]
                            _14829 = mem[160]
                            _14830 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14688
                                _19299 = _10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19299 + 32 len mem[_19299]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14830')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14830')), 0) - 256) + 27 << 248, _14828, _14829) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14688
                                _19304 = _10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19304 + 32 len mem[_19304]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14830')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14830')), 0) - 256) + 27 << 248, _14828, _14829) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + _10473 + 288] = 0
                            _14748 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10473
                            mem[64] = _10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14750 = sha3(mem[_14748 + 32 len mem[_14748]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14899 = mem[128]
                            _14900 = mem[160]
                            _14901 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14750
                                _19309 = _10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19309 + 32 len mem[_19309]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14901')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14901')), 0) - 256) + 27 << 248, _14899, _14900) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14750
                                _19314 = _10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10473 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19314 + 32 len mem[_19314]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14901')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14901')), 0) - 256) + 27 << 248, _14899, _14900) 
                else:
                    mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 256] = 0
                    mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 256 len ceil32(s)] = mem[ceil32(arg3.length) + 224 len ceil32(s)]
                    if ceil32(s) <= s:
                        mem[ceil32(arg3.length) + ceil32(s) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        _10445 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)]
                        if ceil32(_10445) <= _10445:
                            _14689 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10445
                            mem[64] = _10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14691 = sha3(mem[_14689 + 32 len mem[_14689]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14833 = mem[128]
                            _14834 = mem[160]
                            _14835 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14691
                                _19319 = _10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19319 + 32 len mem[_19319]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14835')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14835')), 0) - 256) + 27 << 248, _14833, _14834) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14691
                                _19324 = _10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19324 + 32 len mem[_19324]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14835')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14835')), 0) - 256) + 27 << 248, _14833, _14834) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + _10445 + 288] = 0
                            _14752 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10445
                            mem[64] = _10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14754 = sha3(mem[_14752 + 32 len mem[_14752]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14903 = mem[128]
                            _14904 = mem[160]
                            _14905 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14754
                                _19329 = _10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19329 + 32 len mem[_19329]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14905')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14905')), 0) - 256) + 27 << 248, _14903, _14904) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14754
                                _19334 = _10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10445 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19334 + 32 len mem[_19334]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14905')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14905')), 0) - 256) + 27 << 248, _14903, _14904) 
                    else:
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = 0
                        mem[ceil32(arg3.length) + ceil32(s) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        _10474 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s
                        mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)] = mem[ceil32(arg3.length) + ceil32(s) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 31)]
                        if ceil32(_10474) <= _10474:
                            _14692 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10474
                            mem[64] = _10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14694 = sha3(mem[_14692 + 32 len mem[_14692]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14838 = mem[128]
                            _14839 = mem[160]
                            _14840 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14694
                                _19339 = _10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19339 + 32 len mem[_19339]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14840')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14840')), 0) - 256) + 27 << 248, _14838, _14839) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14694
                                _19344 = _10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19344 + 32 len mem[_19344]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14840')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14840')), 0) - 256) + 27 << 248, _14838, _14839) 
                        else:
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + _10474 + 288] = 0
                            _14756 = ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256
                            mem[ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 256] = _10474
                            mem[64] = _10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288
                            _14758 = sha3(mem[_14756 + 32 len mem[_14756]])
                            if arg3.length != 65:
                                revert with 0, 'Require correct length'
                            _14907 = mem[128]
                            _14908 = mem[160]
                            _14909 = mem[192]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                                revert with 0, 'Signature version not match'
                            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14758
                                _19349 = _10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19349 + 32 len mem[_19349]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14909')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14909')), 0) - 256) + 27 << 248, _14907, _14908) 
                            else:
                                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                                    revert with 0, 'Signature version not match'
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 288] = 28
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 320] = '\x19Ethereum Signed Message:\n32'
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 384] = '\x19Ethereum Signed Message:\n32'
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 412] = _14758
                                _19354 = _10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352
                                mem[_10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 352] = 60
                                mem[64] = _10474 + ceil32(arg3.length) + ceil32(s) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + s + 444
                                signer = erecover(sha3(mem[_19354 + 32 len mem[_19354]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_14909')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_14909')), 0) - 256) + 27 << 248, _14907, _14908) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}



}
