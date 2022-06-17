contract main {




// =====================  Runtime code  =====================


#
#  - buyItem(string arg1)
#  - validateItemSold(address arg1, uint256 arg2, uint256 arg3)
#  - sub_84328e20(?)
#  - sub_9d8820c4(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
array of struct sub_aa3a6b36;
mapping of address owners;
array of uint256 stor153;
mapping of uint256 stor154;
array of uint256 stor155;
mapping of struct sub_a5851902;
uint256 platformFee;
address sub_3740ebb3Address;
address sub_f3ad65f4Address;

function platformFee() {
    return platformFee
}

function sub_3740ebb3(?) {
    return sub_3740ebb3Address
}

function owner() {
    return owner
}

function sub_a5851902(?) {
    require calldata.size - 4 >= 64
    return sub_a5851902[arg1][arg2].field_0, sub_a5851902[arg1][arg2].field_256, sub_a5851902[arg1][arg2].field_512
}

function sub_aa3a6b36(?) {
    require calldata.size - 4 >= 64
    return sub_aa3a6b36[arg1][arg2].field_768, sub_aa3a6b36[arg1][arg2].field_1024, sub_aa3a6b36[arg1][arg2].field_1280
}

function sub_f3ad65f4(?) {
    return sub_f3ad65f4Address
}

function owners(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return owners[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateAddressRegistry(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_f3ad65f4Address = arg1
}

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    platformFee = arg1
    emit UpdatePlatformFee(arg1);
}

function updatePlatformFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_3740ebb3Address = arg1
    emit 0xe57e7c1f: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2d63ce27(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_512 <= block.timestamp:
        revert with 0, 'offer not exists or expired'
    sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_0 = 0
    sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_256 = 0
    sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_512 = 0
    emit OfferCanceled(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function sub_e831eebf(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if not owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]:
        revert with 0, 'invalid id'
    if arg4 <= block.timestamp:
        revert with 0, 'invalid expiration'
    if arg3 <= 0:
        revert with 0, 'invalid price'
    if sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_512 > block.timestamp:
        revert with 0, 'offer exists'
    sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_0 = arg2
    sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_256 = arg3
    sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_512 = arg4
    emit OfferCreated(Array(len=arg1.length, data=arg1[all]), address(arg2), arg3, arg4, msg.sender);
}

function initialize(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        platformFee = arg2
        sub_3740ebb3Address = arg1
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            platformFee = arg2
            sub_3740ebb3Address = arg1
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor101 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            platformFee = arg2
            sub_3740ebb3Address = arg1
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor101 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor101 = 1
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
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor101 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor101 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
}

function sub_4994bfe5(?) {
    require calldata.size - 4 >= 224
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[ceil32(('cd', 4).length) + 160 len floor32(('cd', 4).length)] = call.data[cd[4] + 36 len floor32(('cd', 4).length)]
    mem[ceil32(('cd', 4).length) + floor32(('cd', 4).length) + -(('cd', 4).length % 32) + 192 len ('cd', 4).length % 32] = mem[floor32(('cd', 4).length) + -(('cd', 4).length % 32) + 160 len ('cd', 4).length % 32]
    mem[ceil32(('cd', 4).length) + 128] = ('cd', 4).length
    _1027 = sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])
    stor155[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'invalid data'
    if ('cd', 100).length != ('cd', 68).length:
        revert with 0, 'invalid data'
    if owners[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]]:
        if owners[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]] != msg.sender:
            revert with 0, 'already listed'
        if sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_1024:
            revert with 0, 'already listed'
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.tokenRegistry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(cd[132]):
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid pay token'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).enabled(address arg1) with:
             gas gas_remaining wei
            args address(cd[132])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid pay token'
    sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_0 = 0
    idx = 0
    while sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_0 > idx:
        sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_256 = 0
    idx = 0
    while sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_256 > idx:
        sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_512 = 0
    idx = 0
    while sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_512 > idx:
        sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 36).length
        if ext_call.return_data[0]:
            require idx < ('cd', 68).length
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[68] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                revert with 0, 'not owning item'
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 164] = msg.sender
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 196] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'item not approved'
            sub_aa3a6b36[address(msg.sender)][_1027].field_512++
            stor[('array', 2, ('map', ('var', '_1027'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_aa3a6b36', 151)))) + sub_aa3a6b36[address(msg.sender)][_1027].field_512].field_0 = 1
        else:
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'invalid nft address'
            require idx < ('cd', 36).length
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, cd[((32 * idx) + cd[68] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[((32 * idx) + cd[100] + 36)]:
                revert with 0, 'not owning item'
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 164] = msg.sender
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 196] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'item not approved'
            require idx < ('cd', 100).length
            sub_aa3a6b36[address(msg.sender)][_1027].field_512++
            stor[sub_aa3a6b36[address(msg.sender)][_1027].field_512 + ('array', 2, ('map', ('var', '_1027'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_aa3a6b36', 151))))].field_0 = cd[((32 * idx) + cd[100] + 36)]
        require idx < ('cd', 36).length
        sub_aa3a6b36[address(msg.sender)][_1027].field_0++
        sub_aa3a6b36[address(msg.sender)][_1027][sub_aa3a6b36[address(msg.sender)][_1027].field_0].field_0 = address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 68).length
        sub_aa3a6b36[address(msg.sender)][_1027].field_256++
        stor[('array', 1, ('map', ('var', '_1027'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_aa3a6b36', 151)))) + sub_aa3a6b36[address(msg.sender)][_1027].field_256].field_0 = cd[((32 * idx) + cd[68] + 36)]
        if not stor153[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]][1][_1027]:
            stor153[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]]++
            stor153[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]][stor153[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]]] = _1027
            stor153[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]][1][_1027] = stor153[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]]
        require idx < ('cd', 68).length
        mem[0] = cd[((32 * idx) + cd[68] + 36)]
        mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), sha3(_1027, 154))
        stor154[_1027][address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]] = idx
        idx = idx + 1
        continue 
    sub_aa3a6b36[address(msg.sender)][_1027].field_768 = address(cd[132])
    sub_aa3a6b36[address(msg.sender)][_1027].field_1024 = cd[164]
    sub_aa3a6b36[address(msg.sender)][_1027].field_1280 = cd[196]
    owners[_1027] = msg.sender
    emit ItemListed(Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), address(cd[132]), cd[164], cd[196], msg.sender);
}

function sub_ab0962dd(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor101 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor101 = 2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    _60 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    if sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_1024 <= 0:
        revert with 0, 'not listed'
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.tokenRegistry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid pay token'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).enabled(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid pay token'
    sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768 = arg2
    sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_1024 = arg3
    mem[arg1.length + ceil32(arg1.length) + 288] = arg2
    mem[arg1.length + ceil32(arg1.length) + 320] = arg3
    mem[arg1.length + ceil32(arg1.length) + 160] = 192
    mem[arg1.length + ceil32(arg1.length) + 352] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 192] = arg1.length + 224
    mem[(2 * arg1.length) + ceil32(arg1.length) + 384] = sub_aa3a6b36[address(msg.sender)][_60].field_0
    if not sub_aa3a6b36[address(msg.sender)][_60].field_0:
        mem[arg1.length + ceil32(arg1.length) + 224] = arg1.length + 256
        mem[(2 * arg1.length) + ceil32(arg1.length) + 416] = sub_aa3a6b36[address(msg.sender)][_60].field_256
        if not sub_aa3a6b36[address(msg.sender)][_60].field_256:
            mem[arg1.length + ceil32(arg1.length) + 256] = arg1.length + 288
            mem[(2 * arg1.length) + ceil32(arg1.length) + 448] = sub_aa3a6b36[address(msg.sender)][_60].field_512
            if not sub_aa3a6b36[address(msg.sender)][_60].field_512:
                emit ItemUpdated(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[arg1.length + (2 * ceil32(arg1.length)) + 384 len arg1.length + -ceil32(arg1.length) + 96]), arg1.length + 224, arg1.length + 256, arg1.length + 288, address(arg2), arg3, msg.sender);
            else:
                mem[(2 * arg1.length) + ceil32(arg1.length) + 480] = sub_aa3a6b36[address(msg.sender)][_60][2].field_0
                idx = (2 * arg1.length) + ceil32(arg1.length) + 480
                s = 0
                while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_512) + 480 > idx + 32:
                    mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_60][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit ItemUpdated(address arg1, string arg2, address[] arg3, uint256[] arg4, uint256[] arg5, address arg6, uint256 arg7):
                                 mem[arg1.length + ceil32(arg1.length) + 160 len arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_512) + 320],
                                 msg.sender,
        else:
            mem[(2 * arg1.length) + ceil32(arg1.length) + 448] = sub_aa3a6b36[address(msg.sender)][_60][1].field_0
            idx = (2 * arg1.length) + ceil32(arg1.length) + 448
            s = 0
            while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 448 > idx + 32:
                mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_60][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[arg1.length + ceil32(arg1.length) + 256] = arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 288
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 448] = sub_aa3a6b36[address(msg.sender)][_60].field_512
            if not sub_aa3a6b36[address(msg.sender)][_60].field_512:
                emit ItemUpdated(address arg1, string arg2, address[] arg3, uint256[] arg4, uint256[] arg5, address arg6, uint256 arg7):
                                 mem[arg1.length + ceil32(arg1.length) + 160 len 96],
                                 arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 288,
                                 mem[arg1.length + ceil32(arg1.length) + 288 len arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 192],
                                 msg.sender,
            else:
                mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 480] = sub_aa3a6b36[address(msg.sender)][_60][2].field_0
                idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 480
                s = 0
                while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_512) + 480 > idx + 32:
                    mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_60][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit ItemUpdated(address arg1, string arg2, address[] arg3, uint256[] arg4, uint256[] arg5, address arg6, uint256 arg7):
                                 mem[arg1.length + ceil32(arg1.length) + 160 len arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_512) + 320],
                                 msg.sender,
    else:
        mem[(2 * arg1.length) + ceil32(arg1.length) + 416] = sub_aa3a6b36[address(msg.sender)][_60].field_0
        idx = (2 * arg1.length) + ceil32(arg1.length) + 416
        s = 0
        while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 416 > idx + 32:
            mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_60][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[arg1.length + ceil32(arg1.length) + 224] = arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 256
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 416] = sub_aa3a6b36[address(msg.sender)][_60].field_256
        if not sub_aa3a6b36[address(msg.sender)][_60].field_256:
            mem[arg1.length + ceil32(arg1.length) + 256] = arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 288
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 448] = sub_aa3a6b36[address(msg.sender)][_60].field_512
            if not sub_aa3a6b36[address(msg.sender)][_60].field_512:
                emit ItemUpdated(address arg1, string arg2, address[] arg3, uint256[] arg4, uint256[] arg5, address arg6, uint256 arg7):
                                 mem[arg1.length + ceil32(arg1.length) + 160 len 64],
                                 arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 256,
                                 arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 288,
                                 mem[arg1.length + ceil32(arg1.length) + 288 len arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 192],
                                 msg.sender,
            else:
                mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 480] = sub_aa3a6b36[address(msg.sender)][_60][2].field_0
                idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 480
                s = 0
                while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_512) + 480 > idx + 32:
                    mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_60][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit ItemUpdated(address arg1, string arg2, address[] arg3, uint256[] arg4, uint256[] arg5, address arg6, uint256 arg7):
                                 mem[arg1.length + ceil32(arg1.length) + 160 len arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_512) + 320],
                                 msg.sender,
        else:
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 448] = sub_aa3a6b36[address(msg.sender)][_60][1].field_0
            idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + 448
            s = 0
            while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 448 > idx + 32:
                mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_60][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[arg1.length + ceil32(arg1.length) + 256] = arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 288
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 448] = sub_aa3a6b36[address(msg.sender)][_60].field_512
            if not sub_aa3a6b36[address(msg.sender)][_60].field_512:
                emit ItemUpdated(address arg1, string arg2, address[] arg3, uint256[] arg4, uint256[] arg5, address arg6, uint256 arg7):
                                 mem[arg1.length + ceil32(arg1.length) + 160 len 96],
                                 arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 288,
                                 mem[arg1.length + ceil32(arg1.length) + 288 len arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 192],
                                 msg.sender,
            else:
                mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 480] = sub_aa3a6b36[address(msg.sender)][_60][2].field_0
                idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + 480
                s = 0
                while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_512) + 480 > idx + 32:
                    mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_60][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit ItemUpdated(address arg1, string arg2, address[] arg3, uint256[] arg4, uint256[] arg5, address arg6, uint256 arg7):
                                 mem[arg1.length + ceil32(arg1.length) + 160 len arg1.length + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_60].field_512) + 320],
                                 msg.sender,
    stor101 = 1
}

function sub_49deb977(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    _39 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    mem[arg2.length + ceil32(arg2.length) + 160] = sub_aa3a6b36[address(arg1)][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_0
    if not sub_aa3a6b36[address(arg1)][_39].field_0:
        mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 192] = sub_aa3a6b36[address(arg1)][_39].field_256
        if not sub_aa3a6b36[address(arg1)][_39].field_256:
            if sub_aa3a6b36[address(arg1)][_39].field_512:
                mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256] = sub_aa3a6b36[address(arg1)][_39][2].field_0
                idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256
                s = 0
                while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 224 > idx:
                    mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 448 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)] = mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)]
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 448] = sub_aa3a6b36[address(arg1)][_39].field_256
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)]
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480] = sub_aa3a6b36[address(arg1)][_39].field_512
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)]
            return Array(len=sub_aa3a6b36[address(arg1)][_39].field_0, data=mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)], mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 448 len (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + -floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 64]), 
                   (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 192,
                   (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224,
                   sub_aa3a6b36[address(arg1)][_39].field_1024,
                   sub_aa3a6b36[address(arg1)][_39].field_1280
        mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224] = sub_aa3a6b36[address(arg1)][_39][1].field_0
        idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224
        s = 0
        while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 192 > idx:
            mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 224] = sub_aa3a6b36[address(arg1)][_39].field_512
        if not sub_aa3a6b36[address(arg1)][_39].field_512:
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 448 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)] = mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)]
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 448] = sub_aa3a6b36[address(arg1)][_39].field_256
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)]
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480] = sub_aa3a6b36[address(arg1)][_39].field_512
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)]
            return Array(len=sub_aa3a6b36[address(arg1)][_39].field_0, data=mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)], mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 448 len (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + -floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 64]), 
                   (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 192,
                   (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224,
                   sub_aa3a6b36[address(arg1)][_39].field_1024,
                   sub_aa3a6b36[address(arg1)][_39].field_1280
        mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256] = sub_aa3a6b36[address(arg1)][_39][2].field_0
        idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256
        s = 0
        while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 224 > idx:
            mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        mem[arg2.length + ceil32(arg2.length) + 192] = sub_aa3a6b36[address(arg1)][_39].field_0
        idx = arg2.length + ceil32(arg2.length) + 192
        s = 0
        while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 160 > idx:
            mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 192] = sub_aa3a6b36[address(arg1)][_39].field_256
        if not sub_aa3a6b36[address(arg1)][_39].field_256:
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 224] = sub_aa3a6b36[address(arg1)][_39].field_512
            if not sub_aa3a6b36[address(arg1)][_39].field_512:
                mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 448 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)] = mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)]
                mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 448] = sub_aa3a6b36[address(arg1)][_39].field_256
                mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)]
                mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480] = sub_aa3a6b36[address(arg1)][_39].field_512
                mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)]
                return Array(len=sub_aa3a6b36[address(arg1)][_39].field_0, data=mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)], mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 448 len (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + -floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 64]), 
                       (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 192,
                       (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224,
                       sub_aa3a6b36[address(arg1)][_39].field_1024,
                       sub_aa3a6b36[address(arg1)][_39].field_1280
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256] = sub_aa3a6b36[address(arg1)][_39][2].field_0
            idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256
            s = 0
            while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 224 > idx:
                mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224] = sub_aa3a6b36[address(arg1)][_39][1].field_0
            idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224
            s = 0
            while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 192 > idx:
                mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 224] = sub_aa3a6b36[address(arg1)][_39].field_512
            if sub_aa3a6b36[address(arg1)][_39].field_512:
                mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256] = sub_aa3a6b36[address(arg1)][_39][2].field_0
                idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256
                s = 0
                while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 224 > idx:
                    mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 352] = sub_aa3a6b36[address(arg1)][_39].field_1024
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 384] = sub_aa3a6b36[address(arg1)][_39].field_1280
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 256] = 160
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 416] = mem[arg2.length + ceil32(arg2.length) + 160]
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 448 len floor32(mem[arg2.length + ceil32(arg2.length) + 160])] = mem[arg2.length + ceil32(arg2.length) + 192 len floor32(mem[arg2.length + ceil32(arg2.length) + 160])]
    mem[(32 * mem[arg2.length + ceil32(arg2.length) + 160]) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 448] = sub_aa3a6b36[address(arg1)][_39].field_256
    mem[(32 * mem[arg2.length + ceil32(arg2.length) + 160]) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)]
    mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480] = sub_aa3a6b36[address(arg1)][_39].field_512
    mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)]
    return Array(len=mem[arg2.length + ceil32(arg2.length) + 160], data=mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 448 len (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + 32], mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)], mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + floor32(sub_aa3a6b36[address(arg1)][_39].field_256) + 480 len (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + -floor32(sub_aa3a6b36[address(arg1)][_39].field_256) + 32]), 
           (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + 192,
           (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + 224,
           sub_aa3a6b36[address(arg1)][_39].field_1024,
           sub_aa3a6b36[address(arg1)][_39].field_1280
}

function sub_943f2261(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor101 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor101 = 2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_1024 <= 0:
        revert with 0, 'not listed'
    mem[arg1.length + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = arg1.length
    _178 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 192 len arg1.length % 32])
    mem[(2 * arg1.length) + ceil32(arg1.length) + 192] = 96
    mem[(2 * arg1.length) + ceil32(arg1.length) + 224] = 96
    mem[(2 * arg1.length) + ceil32(arg1.length) + 256] = 96
    mem[(2 * arg1.length) + ceil32(arg1.length) + 288] = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 320] = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 352] = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 576] = sub_aa3a6b36[address(msg.sender)][_178].field_0
    if sub_aa3a6b36[address(msg.sender)][_178].field_0:
        mem[(2 * arg1.length) + ceil32(arg1.length) + 608] = sub_aa3a6b36[address(msg.sender)][_178].field_0
        idx = (2 * arg1.length) + ceil32(arg1.length) + 608
        s = 0
        while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 608 > idx + 32:
            mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_178][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(2 * arg1.length) + ceil32(arg1.length) + 384] = (2 * arg1.length) + ceil32(arg1.length) + 576
    mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 608] = sub_aa3a6b36[address(msg.sender)][_178].field_256
    if not sub_aa3a6b36[address(msg.sender)][_178].field_256:
        mem[(2 * arg1.length) + ceil32(arg1.length) + 416] = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 608
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 640] = sub_aa3a6b36[address(msg.sender)][_178].field_512
        if not sub_aa3a6b36[address(msg.sender)][_178].field_512:
            idx = 0
            while idx < sub_aa3a6b36[address(msg.sender)][_178].field_0:
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
                if stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178]:
                    require stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]] - 1 < stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]
                    require stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178] - 1 < stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]
                    stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178]] = stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]]
                    stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]]] = stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178]
                    require stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]
                    stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]] = 0
                    stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]--
                    stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178] = 0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
                mem[0] = mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 640]
                mem[32] = sha3(mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20], sha3(_178, 154))
                stor154[_178][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]] = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_0 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_0 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_256 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_256 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_512 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_512 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_768 = 0
            sub_aa3a6b36[address(msg.sender)][_178].field_1024 = 0
            sub_aa3a6b36[address(msg.sender)][_178].field_1280 = 0
            owners[_178] = 0
            stor155[_178] = 0
            if 31 < stor155[_178].length:
                idx = 0
                while stor155[_178].length + 31 / 32 > idx:
                    stor155[_178][idx] = 0
                    idx = idx + 1
                    continue 
            emit ItemCanceled(Array(len=arg1.length, data=arg1[all]), msg.sender);
        else:
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 672] = sub_aa3a6b36[address(msg.sender)][_178][2].field_0
            idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 672
            s = 0
            while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 640 > idx:
                mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_178][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(2 * arg1.length) + ceil32(arg1.length) + 448] = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 640
            mem[(2 * arg1.length) + ceil32(arg1.length) + 480] = sub_aa3a6b36[address(msg.sender)][_178].field_768
            mem[(2 * arg1.length) + ceil32(arg1.length) + 512] = sub_aa3a6b36[address(msg.sender)][_178].field_1024
            mem[(2 * arg1.length) + ceil32(arg1.length) + 544] = sub_aa3a6b36[address(msg.sender)][_178].field_1280
            idx = 0
            while idx < sub_aa3a6b36[address(msg.sender)][_178].field_0:
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
                if stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178]:
                    require stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]] - 1 < stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]
                    require stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178] - 1 < stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]
                    stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178]] = stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]]
                    stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]]] = stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178]
                    require stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]
                    stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]] = 0
                    stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]--
                    stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178] = 0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
                mem[0] = mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 640]
                mem[32] = sha3(mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20], sha3(_178, 154))
                stor154[_178][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]] = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_0 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_0 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_256 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_256 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_512 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_512 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_768 = 0
            sub_aa3a6b36[address(msg.sender)][_178].field_1024 = 0
            sub_aa3a6b36[address(msg.sender)][_178].field_1280 = 0
            owners[_178] = 0
            stor155[_178] = 0
            if 31 < stor155[_178].length:
                idx = 0
                while stor155[_178].length + 31 / 32 > idx:
                    stor155[_178][idx] = 0
                    idx = idx + 1
                    continue 
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 672] = 32
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 704] = arg1.length
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit ItemCanceled(mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 672 len arg1.length + 64], msg.sender);
            else:
                mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736] = mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + -(arg1.length % 32) + 768 len arg1.length % 32]
                emit ItemCanceled(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), msg.sender);
    else:
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 640] = sub_aa3a6b36[address(msg.sender)][_178][1].field_0
        idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 640
        s = 0
        while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 608 > idx:
            mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_178][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(2 * arg1.length) + ceil32(arg1.length) + 416] = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 608
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 640] = sub_aa3a6b36[address(msg.sender)][_178].field_512
        if sub_aa3a6b36[address(msg.sender)][_178].field_512:
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 672] = sub_aa3a6b36[address(msg.sender)][_178][2].field_0
            idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 672
            s = 0
            while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 640 > idx:
                mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_178][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[(2 * arg1.length) + ceil32(arg1.length) + 448] = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 640
        mem[(2 * arg1.length) + ceil32(arg1.length) + 480] = sub_aa3a6b36[address(msg.sender)][_178].field_768
        mem[(2 * arg1.length) + ceil32(arg1.length) + 512] = sub_aa3a6b36[address(msg.sender)][_178].field_1024
        mem[(2 * arg1.length) + ceil32(arg1.length) + 544] = sub_aa3a6b36[address(msg.sender)][_178].field_1280
        idx = 0
        while idx < sub_aa3a6b36[address(msg.sender)][_178].field_0:
            require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
            require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
            if stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178]:
                require stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]] - 1 < stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]
                require stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178] - 1 < stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]
                stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178]] = stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]]
                stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]]] = stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178]
                require stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]
                stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]] = 0
                stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]]--
                stor153[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]][1][_178] = 0
            require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
            require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
            mem[0] = mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 640]
            mem[32] = sha3(mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20], sha3(_178, 154))
            stor154[_178][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor151[address(msg.sender)][_178].field_0) + 640]] = 0
            idx = idx + 1
            continue 
        sub_aa3a6b36[address(msg.sender)][_178].field_0 = 0
        idx = 0
        while sub_aa3a6b36[address(msg.sender)][_178].field_0 > idx:
            sub_aa3a6b36[address(msg.sender)][_178][idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_aa3a6b36[address(msg.sender)][_178].field_256 = 0
        idx = 0
        while sub_aa3a6b36[address(msg.sender)][_178].field_256 > idx:
            sub_aa3a6b36[address(msg.sender)][_178][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        sub_aa3a6b36[address(msg.sender)][_178].field_512 = 0
        idx = 0
        while sub_aa3a6b36[address(msg.sender)][_178].field_512 > idx:
            sub_aa3a6b36[address(msg.sender)][_178][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
        sub_aa3a6b36[address(msg.sender)][_178].field_768 = 0
        sub_aa3a6b36[address(msg.sender)][_178].field_1024 = 0
        sub_aa3a6b36[address(msg.sender)][_178].field_1280 = 0
        owners[_178] = 0
        stor155[_178] = 0
        if 31 < stor155[_178].length:
            idx = 0
            while stor155[_178].length + 31 / 32 > idx:
                stor155[_178][idx] = 0
                idx = idx + 1
                continue 
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 672] = 32
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 704] = arg1.length
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit ItemCanceled(mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 672 len arg1.length + 64], msg.sender);
        else:
            mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736] = mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + -(arg1.length % 32) + 768 len arg1.length % 32]
            emit ItemCanceled(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), msg.sender);
    stor101 = 1
}



}
