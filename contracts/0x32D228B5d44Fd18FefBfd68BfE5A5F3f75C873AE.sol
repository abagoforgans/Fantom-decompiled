contract main {




// =====================  Runtime code  =====================


mapping of address requesterIndexToAdmin;
mapping of uint8 stor1;
uint256 stor2;
mapping of struct provider;
mapping of uint256 stor4;
uint256 stor5;
array of struct stor6;
mapping of struct template;
mapping of uint256 stor8;
mapping of uint8 stor9;
uint256 stor10;

function requesterIndexToAdmin(uint256 arg1) {
    require calldata.size - 4 >= 32
    return requesterIndexToAdmin[arg1]
}

function getProvider(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = provider[arg1][1].field_0
    idx = 128
    s = 0
    while provider[arg1][1].length + 96 > idx:
        mem[idx + 32] = provider[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return provider[arg1].field_0, Array(len=provider[arg1][1].length, data=mem[128 len provider[arg1][1].length])
}

function getTemplate(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = template[arg1][5].field_0
    idx = 128
    s = 0
    while template[arg1][5].length + 96 > idx:
        mem[idx + 32] = template[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return template[arg1].field_0, 
           template[arg1].field_256,
           template[arg1].field_512,
           template[arg1].field_768,
           template[arg1].field_1024,
           template[arg1].field_1184 << 224,
           Array(len=template[arg1][5].length, data=mem[128 len template[arg1][5].length])
}

function requestWithIdHasFailed(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function requesterIndexToClientAddressToEndorsementStatus(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor1[arg1][arg2])
}

function _fallback() payable {
    revert
}

function createRequester(address arg1) {
    require calldata.size - 4 >= 32
    stor2++
    requesterIndexToAdmin[stor2] = arg1
    emit 0x59e98f4c: arg1, stor2
    return stor2
}

function updateProvider(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if provider[arg1].field_0 != msg.sender:
        revert with 0, 'Caller is not provider admin'
    provider[arg1].field_0 = arg2
    emit 0xb7de80d0: arg2, arg1
}

function updateRequesterAdmin(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if requesterIndexToAdmin[arg1] != msg.sender:
        revert with 0, 'Caller is not requester admin'
    requesterIndexToAdmin[arg1] = arg2
    emit 0xde26d3d8: arg2, arg1
}

function fail(bytes32 arg1, bytes32 arg2, address arg3, bytes4 arg4) {
    require calldata.size - 4 >= 128
    if sha3(arg2, msg.sender, arg3, arg4) != stor8[arg1]:
        revert with 0, 'Incorrect fulfillment parameters'
    stor8[arg1] = 0
    stor9[arg1] = 1
    emit 0x1cfdd5ac: arg2, arg1
}

function updateClientEndorsementStatus(uint256 arg1, address arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if requesterIndexToAdmin[arg1] != msg.sender:
        revert with 0, 'Caller is not requester admin'
    stor1[arg1][address(arg2)] = uint8(arg3)
    emit 0x8acbd28a: arg3, arg1, arg2
}

function requestWithdrawal(bytes32 arg1, uint256 arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if requesterIndexToAdmin[arg2] != msg.sender:
        revert with 0, 'Caller is not requester admin'
    stor5++
    stor4[this.address][stor5] = sha3(arg1, arg2, arg3, arg4)
    emit 0x3d0ebccb: address(arg3), arg4, arg1, arg2, sha3(this.address, stor5)
}

function fulfillWithdrawal(bytes32 arg1, bytes32 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if stor4[arg1] != sha3(arg2, arg3, msg.sender, arg4):
        revert with 0, 'No such withdrawal request'
    stor4[arg1] = 0
    emit 0x9e7b58b2: msg.sender, address(arg4), msg.value, arg2, arg3, arg1
    call arg4 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed'
}

function fulfill(bytes32 arg1, bytes32 arg2, uint256 arg3, bytes32 arg4, address arg5, bytes4 arg6) {
    require calldata.size - 4 >= 192
    if sha3(arg2, msg.sender, arg5, arg6) != stor8[arg1]:
        revert with 0, 'Incorrect fulfillment parameters'
    stor8[arg1] = 0
    emit 0x1bdbe9e5: arg3, arg4, arg2, arg1
    call arg5 with:
       funct uint32(arg3)
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[432 len 4]
    if not return_data.size:
        return bool(ext_call.success), 
               Array(len=76, data=arg2, msg.sender, arg5, arg6, 0 >> 256, Mask(96, -512, arg2, msg.sender, arg5, arg6, 0) << 512)
    return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function createProvider(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    provider[msg.sender].field_0 = arg1
    provider[msg.sender][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 256] = arg1
    mem[ceil32(arg2.length) + 288] = 64
    mem[ceil32(arg2.length) + 320] = arg2.length
    emit 0x36ef18ad: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 288 len (2 * ceil32(arg2.length)) + -arg2.length + 64], sha3(msg.sender)
    if msg.value > 0:
        call arg1 with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed'
        if return_data.size:
            return sha3(msg.sender)
    mem[ceil32(arg2.length) + 256] = sha3(msg.sender)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 288 len -arg2.length + ceil32(arg2.length)]
}

function makeShortRequest(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not stor1[stor7[arg1].field_512][address(msg.sender)]:
        revert with 0, 'Client not endorsed by requester'
    mem[ceil32(arg2.length) + 288] = template[arg1].field_0
    mem[ceil32(arg2.length) + 320] = template[arg1].field_768
    mem[ceil32(arg2.length) + 340] = template[arg1].field_1024
    mem[ceil32(arg2.length) + 360] = template[arg1].field_1184 << 224
    mem[ceil32(arg2.length) + 256] = 76
    stor8[stor10][arg1][Array(len=arg2.length, data=arg2[all])] = sha3(mem[ceil32(arg2.length) + 288 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 288 len -arg2.length + ceil32(arg2.length)]])
    emit 0xfcbcd5ad: stor10, msg.sender, arg1, Array(len=arg2.length, data=arg2[all]), template[arg1].field_0, sha3(stor10, arg1, Array(len=arg2.length, data=arg2[all]))
    stor10++
    return sha3(stor10, arg1, Array(len=arg2.length, data=arg2[all]))
}

function updateEndpointAuthorizers(bytes32 arg1, bytes32 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if provider[arg1].field_0 != msg.sender:
        revert with 0, 'Caller is not provider admin'
    stor6[arg1][arg2].field_0 = arg3.length
    if not arg3.length:
        idx = 0
        while stor6[arg1][arg2].field_0 > idx:
            stor6[arg1][arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg3 + 36
        while arg3 + (32 * arg3.length) + 36 > idx:
            stor6[arg1][arg2][s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while stor6[arg1][arg2].field_0 > idx:
            stor6[arg1][arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0xe5687475: Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)]), arg1, arg2
}

function getEndpointAuthorizers(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if not stor6[arg1][arg2].field_0:
        mem[(32 * stor6[arg1][arg2].field_0) + 128] = 32
        mem[(32 * stor6[arg1][arg2].field_0) + 160] = stor6[arg1][arg2].field_0
        mem[(32 * stor6[arg1][arg2].field_0) + 192 len floor32(stor6[arg1][arg2].field_0)] = mem[128 len floor32(stor6[arg1][arg2].field_0)]
        return memory
          from (32 * stor6[arg1][arg2].field_0) + 128
           len (96 * stor6[arg1][arg2].field_0) + 64
    mem[128] = stor6[arg1][arg2].field_0
    idx = 128
    s = 0
    while (32 * stor6[arg1][arg2].field_0) + 96 > idx:
        mem[idx + 32] = stor6[arg1][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6[arg1][arg2].field_0) + 192 len floor32(stor6[arg1][arg2].field_0)] = mem[128 len floor32(stor6[arg1][arg2].field_0)]
    return Array(len=stor6[arg1][arg2].field_0, data=mem[128 len floor32(stor6[arg1][arg2].field_0)], mem[(32 * stor6[arg1][arg2].field_0) + floor32(stor6[arg1][arg2].field_0) + 192 len (32 * stor6[arg1][arg2].field_0) - floor32(stor6[arg1][arg2].field_0)]), 
}

function makeRequest(bytes32 arg1, uint256 arg2, address arg3, address arg4, bytes4 arg5, bytes arg6) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    if not stor1[arg2][address(msg.sender)]:
        revert with 0, 'Client not endorsed by requester'
    mem[ceil32(arg6.length) + 288] = template[arg1].field_0
    mem[ceil32(arg6.length) + 320] = address(arg3)
    mem[ceil32(arg6.length) + 340] = address(arg4)
    mem[ceil32(arg6.length) + 360] = Mask(32, 224, arg5)
    mem[ceil32(arg6.length) + 256] = 76
    stor8[stor10][arg1][Array(len=arg6.length, data=arg6[all])] = sha3(mem[ceil32(arg6.length) + 288 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 288 len -arg6.length + ceil32(arg6.length)]])
    emit 0xaff6f5e5: stor10, msg.sender, arg1, arg2, address(arg3), address(arg4), Mask(32, 224, arg5), Array(len=arg6.length, data=arg6[all]), template[arg1].field_0, sha3(stor10, arg1, Array(len=arg6.length, data=arg6[all]))
    stor10++
    return sha3(stor10, arg1, Array(len=arg6.length, data=arg6[all]))
}

function makeFullRequest(bytes32 arg1, bytes32 arg2, uint256 arg3, address arg4, address arg5, bytes4 arg6, bytes arg7) {
    require calldata.size - 4 >= 224
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    if not stor1[arg3][address(msg.sender)]:
        revert with 0, 'Client not endorsed by requester'
    mem[ceil32(arg7.length) + 320] = arg1
    mem[ceil32(arg7.length) + 352] = address(arg4)
    mem[ceil32(arg7.length) + 372] = address(arg5)
    mem[ceil32(arg7.length) + 392] = Mask(32, 224, arg6)
    mem[ceil32(arg7.length) + 288] = 76
    stor8[stor10][arg1][arg2][Array(len=arg7.length, data=arg7[all])] = sha3(mem[ceil32(arg7.length) + 320 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 320 len -arg7.length + ceil32(arg7.length)]])
    emit 0x775e78a8: stor10, msg.sender, arg2, arg3, address(arg4), address(arg5), Mask(32, 224, arg6), Array(len=arg7.length, data=arg7[all]), arg1, sha3(stor10, arg1, arg2, Array(len=arg7.length, data=arg7[all]))
    stor10++
    return sha3(stor10, arg1, arg2, Array(len=arg7.length, data=arg7[all]))
}

function fulfillBytes(bytes32 arg1, bytes32 arg2, uint256 arg3, bytes arg4, address arg5, bytes4 arg6) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if sha3(arg2, msg.sender, arg5, arg6) != stor8[arg1]:
        revert with 0, 'Incorrect fulfillment parameters'
    stor8[arg1] = 0
    mem[300 len arg4.length] = arg4[all]
    mem[arg4.length + 300] = 0
    emit 0xebeb9b9b: arg3, Array(len=arg4.length, data=arg4[all]), arg2, arg1
    mem[272] = arg3
    mem[304] = 96
    mem[336] = arg4.length
    mem[368 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 368 len floor32(ceil32(arg4.length) + 132)] = arg6, arg1, mem[272 len arg4.length + 28], 0, mem[arg4.length + 332 len floor32(ceil32(arg4.length) + 132) + -arg4.length - 96]
    call arg5.mem[floor32(ceil32(arg4.length) + 132) + 204 len 4] with:
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg4.length) + arg4.length + 28, 0, 0), mem[arg4.length + 400 len (2 * ceil32(arg4.length)) + -arg4.length + 100]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg4.length) + 368] = bool(ext_call.success)
    mem[ceil32(arg4.length) + 400] = 64
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
           mem[arg4.length + 400 len ceil32(arg4.length) + -arg4.length + 32],
           76,
           arg5, arg6, Mask(160, 96, ceil32(arg4.length) + 132) >> 96 >> 256,
           0
}

function createTemplate(bytes32 arg1, bytes32 arg2, uint256 arg3, address arg4, address arg5, bytes4 arg6, bytes arg7) {
    require calldata.size - 4 >= 224
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    mem[ceil32(arg7.length) + 640 len arg7.length] = arg7[all]
    mem[ceil32(arg7.length) + arg7.length + 640] = 0
    template[arg1][arg2][arg3][address(arg4)][address(arg5)][Mask(32, 224, arg6)][Array(len=arg7.length, data=arg7[all])].field_0 = arg1
    template[arg1][arg2][arg3][address(arg4)][address(arg5)][Mask(32, 224, arg6)][Array(len=arg7.length, data=arg7[all])].field_256 = arg2
    template[arg1][arg2][arg3][address(arg4)][address(arg5)][Mask(32, 224, arg6)][Array(len=arg7.length, data=arg7[all])].field_512 = arg3
    template[arg1][arg2][arg3][address(arg4)][address(arg5)][Mask(32, 224, arg6)][Array(len=arg7.length, data=arg7[all])].field_768 = arg4
    template[arg1][arg2][arg3][address(arg4)][address(arg5)][Mask(32, 224, arg6)][Array(len=arg7.length, data=arg7[all])].field_1024 = arg5
    template[arg1][arg2][arg3][address(arg4)][address(arg5)][Mask(32, 224, arg6)][Array(len=arg7.length, data=arg7[all])].field_1184 = 0
    template[arg1][arg2][arg3][address(arg4)][address(arg5)][Mask(32, 224, arg6)][Array(len=arg7.length, data=arg7[all])][5][].field_0 = Array(len=arg7.length, data=arg7[all])
    mem[(2 * ceil32(arg7.length)) + 640] = arg1
    mem[(2 * ceil32(arg7.length)) + 672] = arg2
    mem[(2 * ceil32(arg7.length)) + 704] = arg3
    mem[(2 * ceil32(arg7.length)) + 736] = arg4
    mem[(2 * ceil32(arg7.length)) + 768] = arg5
    mem[(2 * ceil32(arg7.length)) + 800] = Mask(32, 224, arg6)
    mem[(2 * ceil32(arg7.length)) + 832] = 224
    mem[(2 * ceil32(arg7.length)) + 864] = arg7.length
    mem[(2 * ceil32(arg7.length)) + 896 len arg7.length] = arg7[all]
    mem[(2 * ceil32(arg7.length)) + arg7.length + 896] = 0
    emit 0xfa33b859: mem[(2 * ceil32(arg7.length)) + 640 len (4 * ceil32(arg7.length)) + 256], sha3(arg1, arg2, arg3, address(arg4), address(arg5), Mask(32, 224, arg6), Array(len=arg7.length, data=arg7[all]))
    return sha3(arg1, arg2, arg3, address(arg4), address(arg5), Mask(32, 224, arg6), Array(len=arg7.length, data=arg7[all]))
}



}
