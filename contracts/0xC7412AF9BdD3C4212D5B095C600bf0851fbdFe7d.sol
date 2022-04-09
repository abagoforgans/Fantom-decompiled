contract main {




// =====================  Runtime code  =====================


#
#  - sub_0b140106(?)
#
const balanceOf = eth.balance(this.address)


uint32 stor0;
address owner;
uint256 stor0;
mapping of uint8 stor1;
address stor2;
uint8 storE78D;
uint8 stor1A65;
uint8 stor1B69;
uint8 stor1EC5;
uint8 stor2F2C;
uint8 stor314B;
uint8 stor35D4;
uint8 stor37FB;
uint8 stor46DB;
uint8 stor5867;
uint8 stor628E;
uint8 stor6971;
uint8 stor6CE0;
uint8 stor6CF5;
uint8 stor6FFC;
uint8 stor7320;
uint8 stor8006;
uint8 stor80CB;
uint8 stor83BC;
uint8 stor9036;
uint8 stor9604;
uint8 stor96B4;
uint8 stor9B74;
uint8 storA384;
uint8 storBE14;
uint8 storC662;
uint8 storD5C2;
uint8 storDF00;
uint8 storE14D;
uint8 storED9A;

function caller(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function owner() {
    return address(owner)
}

function _fallback() payable {
  stop
}

function deposit() payable {
    emit Deposit(0, msg.sender, msg.value, eth.balance(this.address));
}

function setWethAddress(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    stor2 = arg1
}

function setCaller(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    stor1[address(arg1)] = 1
}

function removeCaller(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    stor1[address(arg1)] = 0
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(address(owner), arg1);
    address(owner) = arg1
}

function balanceOf(address arg1) {
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

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), 7716049382716049375 * 10^10 * 3600 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function init() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    stor1EC5 = 1
    stor9604 = 1
    storE14D = 1
    stor6CE0 = 1
    storED9A = 1
    stor314B = 1
    stor6CF5 = 1
    storBE14 = 1
    stor2F2C = 1
    stor1A65 = 1
    storE78D = 1
    stor628E = 1
    stor9B74 = 1
    storA384 = 1
    stor9036 = 1
    storDF00 = 1
    stor35D4 = 1
    storD5C2 = 1
    stor96B4 = 1
    stor7320 = 1
    stor8006 = 1
    stor46DB = 1
    stor37FB = 1
    stor83BC = 1
    stor6FFC = 1
    storC662 = 1
    stor6971 = 1
    stor1B69 = 1
    stor5867 = 1
    stor80CB = 1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    call address(owner) with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x675472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x675472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
    emit Withdraw(0, msg.sender, arg1, arg1);
}

function withdrawAll() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x675472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x675472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
    emit Withdraw(0, msg.sender, eth.balance(this.address), eth.balance(this.address));
}

function sub_2d38be28(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    mem[96 len arg2.length] = arg2[all]
    call arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if not bool(ext_call.success) % 32:
        return memory
          from 96
           len bool(ext_call.success) + 96
    mem[floor32(bool(ext_call.success)) + 192] = Mask(-(8 * -(bool(ext_call.success) % 32) + 32) + 256, 0, mem[floor32(bool(ext_call.success)) + 192])
    return memory
      from 96
       len floor32(bool(ext_call.success)) + 128
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'INVALID TOKEN'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(address(arg1), msg.sender, arg2, ext_call.return_data[0]);
}

function sub_efe7b040(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 32, 19, 0xfe4f776e61626c653a20464f5242494444454e32000000000000000000000000
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = arg3
    mem[196] = this.address
    mem[228] = block.timestamp + 60
    mem[164] = 160
    mem[260] = arg4.length
    mem[292 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 292] = 0
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, uint32(arg2), arg3, 160, address(this.address), block.timestamp + 60, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
}

function sub_5629d258(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'INVALID TOKEN'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
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
    emit Withdraw(address(arg1), msg.sender, ext_call.return_data[0], ext_call.return_data[0]);
}

function sub_34a4a9bf(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 32, 19, 0xfe4f776e61626c653a20464f5242494444454e32000000000000000000000000
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = cd[68]
    while uint8(idx) < ('cd', 132).length - 1:
        require uint8(idx) < ('cd', 4).length
        require ext_code.size(address(cd[((32 * uint8(idx)) + cd[4] + 36)]))
        staticcall address(cd[((32 * uint8(idx)) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require uint8(idx + 1) < ('cd', 132).length
        require uint8(idx) < ('cd', 132).length
        if address(cd[((32 * uint8(idx)) + cd[132] + 36)]) < address(cd[((32 * uint8(idx + 1)) + cd[132] + 36)]):
            if (10000 * s) - (cd[36] * s) + (10000 * ext_call.return_data[18 len 14]):
                idx = idx + 1
                s = ext_call.return_data[50 len 14]
                s = ext_call.return_data[18 len 14]
                s = ext_call.return_data[50 len 14]
                s = ext_call.return_data[18 len 14]
                s = (10000 * s * ext_call.return_data[50 len 14]) - (cd[36] * s * ext_call.return_data[50 len 14]) / (10000 * s) - (cd[36] * s) + (10000 * ext_call.return_data[18 len 14])
                continue 
        else:
            if (10000 * s) - (cd[36] * s) + (10000 * ext_call.return_data[50 len 14]):
                idx = idx + 1
                s = ext_call.return_data[18 len 14]
                s = ext_call.return_data[50 len 14]
                s = ext_call.return_data[50 len 14]
                s = ext_call.return_data[18 len 14]
                s = (10000 * s * ext_call.return_data[18 len 14]) - (cd[36] * s * ext_call.return_data[18 len 14]) / (10000 * s) - (cd[36] * s) + (10000 * ext_call.return_data[50 len 14])
                continue 
        revert
    if s < cd[100]:
        revert with 0, 'I'
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 132).length
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
    require ('cd', 132).length <= test266151307()
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] = ('cd', 132).length
    mem[64] = (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192
    if not ('cd', 132).length:
        require 0 < ('cd', 132).length
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = s
        idx = 0
        while idx < ('cd', 132).length - 1:
            require idx < ('cd', 4).length
            require idx < ('cd', 132).length
            _2309 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx + 1 < ('cd', 132).length
            _2316 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
            if mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]:
                if address(_2309) == address(_2309):
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, '*'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, '+'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                            revert with 0, '*'
                        if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '*'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                else:
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, '*'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, '+'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                            revert with 0, '*'
                        if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '*'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
            else:
                if address(_2316) == address(_2309):
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, '*'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, '+'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                            revert with 0, '*'
                        if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '*'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                else:
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, '*'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, '+'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                            revert with 0, '*'
                        if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '*'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
        if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] < cd[100]:
            revert with 0, 'J'
        require 0 < ('cd', 132).length
        require 0 < ('cd', 4).length
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 228] = address(('cd', 4)[0])
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 260] = s
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 68
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 224 len 4] = unknown_0xa9059cbb(?????)
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292 len 64] = 0, address(('cd', 4)[0]), Mask(224, 32, s) >> 32
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 384 len 4] = Mask(32, 64, s) >> 64
        call address(('cd', 132)[0]) with:
             gas gas_remaining wei
            args s, Mask(224, 32, address(('cd', 4)[0]), Mask(224, 32, s) >> 32) >> 32, mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not ('cd', 4).length:
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = ('cd', 4).length
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] = ('cd', 132).length
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356] = 0
                s = 0
                while s < ('cd', 132).length - 1:
                    require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                    require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                    require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                    if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                        _4346 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4491 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4555 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4555 + 36] = 0
                                mem[_4555 + 68] = _4346
                                mem[_4555 + 100] = this.address
                                mem[_4555 + 132] = 128
                                mem[_4555 + 164] = mem[_4555]
                                idx = 0
                                while idx < mem[_4555]:
                                    mem[idx + _4555 + 196] = mem[idx + _4555 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4555] % 32:
                                    require ext_code.size(address(_4491))
                                    call address(_4491).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4346, address(this.address), 128, mem[_4555 + 164 len mem[_4555] + 32]
                                else:
                                    mem[floor32(mem[_4555]) + _4555 + 196] = mem[floor32(mem[_4555]) + _4555 + -(mem[_4555] % 32) + 228 len mem[_4555] % 32]
                                    require ext_code.size(address(_4491))
                                    call address(_4491).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4346, address(this.address), 128, mem[_4555], mem[_4555 + 196 len floor32(mem[_4555]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4426 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4554 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4618 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4618 + 36] = 0
                                mem[_4618 + 68] = _4346
                                mem[_4618 + 100] = address(_4426)
                                mem[_4618 + 132] = 128
                                mem[_4618 + 164] = mem[_4618]
                                t = 0
                                while t < mem[_4618]:
                                    mem[t + _4618 + 196] = mem[t + _4618 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4618] % 32:
                                    require ext_code.size(address(_4554))
                                    call address(_4554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4346, address(_4426), 128, mem[_4618 + 164 len mem[_4618] + 32]
                                else:
                                    mem[floor32(mem[_4618]) + _4618 + 196] = mem[floor32(mem[_4618]) + _4618 + -(mem[_4618] % 32) + 228 len mem[_4618] % 32]
                                    require ext_code.size(address(_4554))
                                    call address(_4554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4346, address(_4426), 128, mem[_4618], mem[_4618 + 196 len floor32(mem[_4618]) + 32]
                        else:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4493 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4557 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4557 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4557 + 36] = _4346
                                mem[_4557 + 68] = 0
                                mem[_4557 + 100] = this.address
                                mem[_4557 + 132] = 128
                                mem[_4557 + 164] = mem[_4557]
                                idx = 0
                                while idx < mem[_4557]:
                                    mem[idx + _4557 + 196] = mem[idx + _4557 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4557] % 32:
                                    require ext_code.size(address(_4493))
                                    call address(_4493).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4346, 0, address(this.address), 128, mem[_4557 + 164 len mem[_4557] + 32]
                                else:
                                    mem[floor32(mem[_4557]) + _4557 + 196] = mem[floor32(mem[_4557]) + _4557 + -(mem[_4557] % 32) + 228 len mem[_4557] % 32]
                                    require ext_code.size(address(_4493))
                                    call address(_4493).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4346, 0, address(this.address), 128, mem[_4557], mem[_4557 + 196 len floor32(mem[_4557]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4428 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4556 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4622 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4622 + 36] = _4346
                                mem[_4622 + 68] = 0
                                mem[_4622 + 100] = address(_4428)
                                mem[_4622 + 132] = 128
                                mem[_4622 + 164] = mem[_4622]
                                t = 0
                                while t < mem[_4622]:
                                    mem[t + _4622 + 196] = mem[t + _4622 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4622] % 32:
                                    require ext_code.size(address(_4556))
                                    call address(_4556).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4346, 0, address(_4428), 128, mem[_4622 + 164 len mem[_4622] + 32]
                                else:
                                    mem[floor32(mem[_4622]) + _4622 + 196] = mem[floor32(mem[_4622]) + _4622 + -(mem[_4622] % 32) + 228 len mem[_4622] % 32]
                                    require ext_code.size(address(_4556))
                                    call address(_4556).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4346, 0, address(_4428), 128, mem[_4622], mem[_4622 + 196 len floor32(mem[_4622]) + 32]
                    else:
                        _4347 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4495 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4559 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4559 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4559 + 36] = 0
                                mem[_4559 + 68] = _4347
                                mem[_4559 + 100] = this.address
                                mem[_4559 + 132] = 128
                                mem[_4559 + 164] = mem[_4559]
                                idx = 0
                                while idx < mem[_4559]:
                                    mem[idx + _4559 + 196] = mem[idx + _4559 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4559] % 32:
                                    require ext_code.size(address(_4495))
                                    call address(_4495).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4347, address(this.address), 128, mem[_4559 + 164 len mem[_4559] + 32]
                                else:
                                    mem[floor32(mem[_4559]) + _4559 + 196] = mem[floor32(mem[_4559]) + _4559 + -(mem[_4559] % 32) + 228 len mem[_4559] % 32]
                                    require ext_code.size(address(_4495))
                                    call address(_4495).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4347, address(this.address), 128, mem[_4559], mem[_4559 + 196 len floor32(mem[_4559]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4430 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4558 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4626 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4626 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4626 + 36] = 0
                                mem[_4626 + 68] = _4347
                                mem[_4626 + 100] = address(_4430)
                                mem[_4626 + 132] = 128
                                mem[_4626 + 164] = mem[_4626]
                                t = 0
                                while t < mem[_4626]:
                                    mem[t + _4626 + 196] = mem[t + _4626 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4626] % 32:
                                    require ext_code.size(address(_4558))
                                    call address(_4558).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4347, address(_4430), 128, mem[_4626 + 164 len mem[_4626] + 32]
                                else:
                                    mem[floor32(mem[_4626]) + _4626 + 196] = mem[floor32(mem[_4626]) + _4626 + -(mem[_4626] % 32) + 228 len mem[_4626] % 32]
                                    require ext_code.size(address(_4558))
                                    call address(_4558).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4347, address(_4430), 128, mem[_4626], mem[_4626 + 196 len floor32(mem[_4626]) + 32]
                        else:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4497 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4561 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4561 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4561 + 36] = _4347
                                mem[_4561 + 68] = 0
                                mem[_4561 + 100] = this.address
                                mem[_4561 + 132] = 128
                                mem[_4561 + 164] = mem[_4561]
                                idx = 0
                                while idx < mem[_4561]:
                                    mem[idx + _4561 + 196] = mem[idx + _4561 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4561] % 32:
                                    require ext_code.size(address(_4497))
                                    call address(_4497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4347, 0, address(this.address), 128, mem[_4561 + 164 len mem[_4561] + 32]
                                else:
                                    mem[floor32(mem[_4561]) + _4561 + 196] = mem[floor32(mem[_4561]) + _4561 + -(mem[_4561] % 32) + 228 len mem[_4561] % 32]
                                    require ext_code.size(address(_4497))
                                    call address(_4497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4347, 0, address(this.address), 128, mem[_4561], mem[_4561 + 196 len floor32(mem[_4561]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4432 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4560 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4630 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4630 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4630 + 36] = _4347
                                mem[_4630 + 68] = 0
                                mem[_4630 + 100] = address(_4432)
                                mem[_4630 + 132] = 128
                                mem[_4630 + 164] = mem[_4630]
                                t = 0
                                while t < mem[_4630]:
                                    mem[t + _4630 + 196] = mem[t + _4630 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4630] % 32:
                                    require ext_code.size(address(_4560))
                                    call address(_4560).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4347, 0, address(_4432), 128, mem[_4630 + 164 len mem[_4630] + 32]
                                else:
                                    mem[floor32(mem[_4630]) + _4630 + 196] = mem[floor32(mem[_4630]) + _4630 + -(mem[_4630] % 32) + 228 len mem[_4630] % 32]
                                    require ext_code.size(address(_4560))
                                    call address(_4560).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4347, 0, address(_4432), 128, mem[_4630], mem[_4630 + 196 len floor32(mem[_4630]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
            else:
                require ('cd', 4).length >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = ('cd', 4).length
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] = ('cd', 132).length
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356] = 0
                idx = 0
                while idx < ('cd', 132).length - 1:
                    require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                    require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                        _4348 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4499 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4563 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4563 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4563 + 36] = 0
                                mem[_4563 + 68] = _4348
                                mem[_4563 + 100] = this.address
                                mem[_4563 + 132] = 128
                                mem[_4563 + 164] = mem[_4563]
                                s = 0
                                while s < mem[_4563]:
                                    mem[s + _4563 + 196] = mem[s + _4563 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4563] % 32:
                                    require ext_code.size(address(_4499))
                                    call address(_4499).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4348, address(this.address), 128, mem[_4563 + 164 len mem[_4563] + 32]
                                else:
                                    mem[floor32(mem[_4563]) + _4563 + 196] = mem[floor32(mem[_4563]) + _4563 + -(mem[_4563] % 32) + 228 len mem[_4563] % 32]
                                    require ext_code.size(address(_4499))
                                    call address(_4499).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4348, address(this.address), 128, mem[_4563], mem[_4563 + 196 len floor32(mem[_4563]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4434 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4562 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4634 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4634 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4634 + 36] = 0
                                mem[_4634 + 68] = _4348
                                mem[_4634 + 100] = address(_4434)
                                mem[_4634 + 132] = 128
                                mem[_4634 + 164] = mem[_4634]
                                s = 0
                                while s < mem[_4634]:
                                    mem[s + _4634 + 196] = mem[s + _4634 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4634] % 32:
                                    require ext_code.size(address(_4562))
                                    call address(_4562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4348, address(_4434), 128, mem[_4634 + 164 len mem[_4634] + 32]
                                else:
                                    mem[floor32(mem[_4634]) + _4634 + 196] = mem[floor32(mem[_4634]) + _4634 + -(mem[_4634] % 32) + 228 len mem[_4634] % 32]
                                    require ext_code.size(address(_4562))
                                    call address(_4562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4348, address(_4434), 128, mem[_4634], mem[_4634 + 196 len floor32(mem[_4634]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4501 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4565 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4565 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4565 + 36] = _4348
                                mem[_4565 + 68] = 0
                                mem[_4565 + 100] = this.address
                                mem[_4565 + 132] = 128
                                mem[_4565 + 164] = mem[_4565]
                                s = 0
                                while s < mem[_4565]:
                                    mem[s + _4565 + 196] = mem[s + _4565 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4565] % 32:
                                    require ext_code.size(address(_4501))
                                    call address(_4501).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4348, 0, address(this.address), 128, mem[_4565 + 164 len mem[_4565] + 32]
                                else:
                                    mem[floor32(mem[_4565]) + _4565 + 196] = mem[floor32(mem[_4565]) + _4565 + -(mem[_4565] % 32) + 228 len mem[_4565] % 32]
                                    require ext_code.size(address(_4501))
                                    call address(_4501).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4348, 0, address(this.address), 128, mem[_4565], mem[_4565 + 196 len floor32(mem[_4565]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4436 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4564 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4638 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4638 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4638 + 36] = _4348
                                mem[_4638 + 68] = 0
                                mem[_4638 + 100] = address(_4436)
                                mem[_4638 + 132] = 128
                                mem[_4638 + 164] = mem[_4638]
                                s = 0
                                while s < mem[_4638]:
                                    mem[s + _4638 + 196] = mem[s + _4638 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4638] % 32:
                                    require ext_code.size(address(_4564))
                                    call address(_4564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4348, 0, address(_4436), 128, mem[_4638 + 164 len mem[_4638] + 32]
                                else:
                                    mem[floor32(mem[_4638]) + _4638 + 196] = mem[floor32(mem[_4638]) + _4638 + -(mem[_4638] % 32) + 228 len mem[_4638] % 32]
                                    require ext_code.size(address(_4564))
                                    call address(_4564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4348, 0, address(_4436), 128, mem[_4638], mem[_4638 + 196 len floor32(mem[_4638]) + 32]
                    else:
                        _4349 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4503 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4567 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4567 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4567 + 36] = 0
                                mem[_4567 + 68] = _4349
                                mem[_4567 + 100] = this.address
                                mem[_4567 + 132] = 128
                                mem[_4567 + 164] = mem[_4567]
                                s = 0
                                while s < mem[_4567]:
                                    mem[s + _4567 + 196] = mem[s + _4567 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4567] % 32:
                                    require ext_code.size(address(_4503))
                                    call address(_4503).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4349, address(this.address), 128, mem[_4567 + 164 len mem[_4567] + 32]
                                else:
                                    mem[floor32(mem[_4567]) + _4567 + 196] = mem[floor32(mem[_4567]) + _4567 + -(mem[_4567] % 32) + 228 len mem[_4567] % 32]
                                    require ext_code.size(address(_4503))
                                    call address(_4503).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4349, address(this.address), 128, mem[_4567], mem[_4567 + 196 len floor32(mem[_4567]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4438 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4566 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4642 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4642 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4642 + 36] = 0
                                mem[_4642 + 68] = _4349
                                mem[_4642 + 100] = address(_4438)
                                mem[_4642 + 132] = 128
                                mem[_4642 + 164] = mem[_4642]
                                s = 0
                                while s < mem[_4642]:
                                    mem[s + _4642 + 196] = mem[s + _4642 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4642] % 32:
                                    require ext_code.size(address(_4566))
                                    call address(_4566).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4349, address(_4438), 128, mem[_4642 + 164 len mem[_4642] + 32]
                                else:
                                    mem[floor32(mem[_4642]) + _4642 + 196] = mem[floor32(mem[_4642]) + _4642 + -(mem[_4642] % 32) + 228 len mem[_4642] % 32]
                                    require ext_code.size(address(_4566))
                                    call address(_4566).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4349, address(_4438), 128, mem[_4642], mem[_4642 + 196 len floor32(mem[_4642]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4505 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4569 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4569 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4569 + 36] = _4349
                                mem[_4569 + 68] = 0
                                mem[_4569 + 100] = this.address
                                mem[_4569 + 132] = 128
                                mem[_4569 + 164] = mem[_4569]
                                s = 0
                                while s < mem[_4569]:
                                    mem[s + _4569 + 196] = mem[s + _4569 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4569] % 32:
                                    require ext_code.size(address(_4505))
                                    call address(_4505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4349, 0, address(this.address), 128, mem[_4569 + 164 len mem[_4569] + 32]
                                else:
                                    mem[floor32(mem[_4569]) + _4569 + 196] = mem[floor32(mem[_4569]) + _4569 + -(mem[_4569] % 32) + 228 len mem[_4569] % 32]
                                    require ext_code.size(address(_4505))
                                    call address(_4505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4349, 0, address(this.address), 128, mem[_4569], mem[_4569 + 196 len floor32(mem[_4569]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4440 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4568 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4646 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4646 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4646 + 36] = _4349
                                mem[_4646 + 68] = 0
                                mem[_4646 + 100] = address(_4440)
                                mem[_4646 + 132] = 128
                                mem[_4646 + 164] = mem[_4646]
                                s = 0
                                while s < mem[_4646]:
                                    mem[s + _4646 + 196] = mem[s + _4646 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4646] % 32:
                                    require ext_code.size(address(_4568))
                                    call address(_4568).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4349, 0, address(_4440), 128, mem[_4646 + 164 len mem[_4646] + 32]
                                else:
                                    mem[floor32(mem[_4646]) + _4646 + 196] = mem[floor32(mem[_4646]) + _4646 + -(mem[_4646] % 32) + 228 len mem[_4646] % 32]
                                    require ext_code.size(address(_4568))
                                    call address(_4568).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4349, 0, address(_4440), 128, mem[_4646], mem[_4646 + 196 len floor32(mem[_4646]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = return_data.size
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not return_data.size:
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293] = ('cd', 4).length
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] = ('cd', 132).length
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357] = 0
                s = 0
                while s < ('cd', 132).length - 1:
                    require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                    require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                    require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                    if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                        _4350 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4507 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4571 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4571 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4571 + 36] = 0
                                mem[_4571 + 68] = _4350
                                mem[_4571 + 100] = this.address
                                mem[_4571 + 132] = 128
                                mem[_4571 + 164] = mem[_4571]
                                idx = 0
                                while idx < mem[_4571]:
                                    mem[idx + _4571 + 196] = mem[idx + _4571 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4571] % 32:
                                    require ext_code.size(address(_4507))
                                    call address(_4507).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4350, address(this.address), 128, mem[_4571 + 164 len mem[_4571] + 32]
                                else:
                                    mem[floor32(mem[_4571]) + _4571 + 196] = mem[floor32(mem[_4571]) + _4571 + -(mem[_4571] % 32) + 228 len mem[_4571] % 32]
                                    require ext_code.size(address(_4507))
                                    call address(_4507).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4350, address(this.address), 128, mem[_4571], mem[_4571 + 196 len floor32(mem[_4571]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4442 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4570 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4650 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4650 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4650 + 36] = 0
                                mem[_4650 + 68] = _4350
                                mem[_4650 + 100] = address(_4442)
                                mem[_4650 + 132] = 128
                                mem[_4650 + 164] = mem[_4650]
                                t = 0
                                while t < mem[_4650]:
                                    mem[t + _4650 + 196] = mem[t + _4650 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4650] % 32:
                                    require ext_code.size(address(_4570))
                                    call address(_4570).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4350, address(_4442), 128, mem[_4650 + 164 len mem[_4650] + 32]
                                else:
                                    mem[floor32(mem[_4650]) + _4650 + 196] = mem[floor32(mem[_4650]) + _4650 + -(mem[_4650] % 32) + 228 len mem[_4650] % 32]
                                    require ext_code.size(address(_4570))
                                    call address(_4570).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4350, address(_4442), 128, mem[_4650], mem[_4650 + 196 len floor32(mem[_4650]) + 32]
                        else:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4509 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4573 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4573 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4573 + 36] = _4350
                                mem[_4573 + 68] = 0
                                mem[_4573 + 100] = this.address
                                mem[_4573 + 132] = 128
                                mem[_4573 + 164] = mem[_4573]
                                idx = 0
                                while idx < mem[_4573]:
                                    mem[idx + _4573 + 196] = mem[idx + _4573 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4573] % 32:
                                    require ext_code.size(address(_4509))
                                    call address(_4509).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4350, 0, address(this.address), 128, mem[_4573 + 164 len mem[_4573] + 32]
                                else:
                                    mem[floor32(mem[_4573]) + _4573 + 196] = mem[floor32(mem[_4573]) + _4573 + -(mem[_4573] % 32) + 228 len mem[_4573] % 32]
                                    require ext_code.size(address(_4509))
                                    call address(_4509).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4350, 0, address(this.address), 128, mem[_4573], mem[_4573 + 196 len floor32(mem[_4573]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4444 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4572 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4654 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4654 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4654 + 36] = _4350
                                mem[_4654 + 68] = 0
                                mem[_4654 + 100] = address(_4444)
                                mem[_4654 + 132] = 128
                                mem[_4654 + 164] = mem[_4654]
                                t = 0
                                while t < mem[_4654]:
                                    mem[t + _4654 + 196] = mem[t + _4654 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4654] % 32:
                                    require ext_code.size(address(_4572))
                                    call address(_4572).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4350, 0, address(_4444), 128, mem[_4654 + 164 len mem[_4654] + 32]
                                else:
                                    mem[floor32(mem[_4654]) + _4654 + 196] = mem[floor32(mem[_4654]) + _4654 + -(mem[_4654] % 32) + 228 len mem[_4654] % 32]
                                    require ext_code.size(address(_4572))
                                    call address(_4572).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4350, 0, address(_4444), 128, mem[_4654], mem[_4654 + 196 len floor32(mem[_4654]) + 32]
                    else:
                        _4351 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4511 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4575 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4575 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4575 + 36] = 0
                                mem[_4575 + 68] = _4351
                                mem[_4575 + 100] = this.address
                                mem[_4575 + 132] = 128
                                mem[_4575 + 164] = mem[_4575]
                                idx = 0
                                while idx < mem[_4575]:
                                    mem[idx + _4575 + 196] = mem[idx + _4575 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4575] % 32:
                                    require ext_code.size(address(_4511))
                                    call address(_4511).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4351, address(this.address), 128, mem[_4575 + 164 len mem[_4575] + 32]
                                else:
                                    mem[floor32(mem[_4575]) + _4575 + 196] = mem[floor32(mem[_4575]) + _4575 + -(mem[_4575] % 32) + 228 len mem[_4575] % 32]
                                    require ext_code.size(address(_4511))
                                    call address(_4511).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4351, address(this.address), 128, mem[_4575], mem[_4575 + 196 len floor32(mem[_4575]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4446 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4574 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4658 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4658 + 36] = 0
                                mem[_4658 + 68] = _4351
                                mem[_4658 + 100] = address(_4446)
                                mem[_4658 + 132] = 128
                                mem[_4658 + 164] = mem[_4658]
                                t = 0
                                while t < mem[_4658]:
                                    mem[t + _4658 + 196] = mem[t + _4658 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4658] % 32:
                                    require ext_code.size(address(_4574))
                                    call address(_4574).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4351, address(_4446), 128, mem[_4658 + 164 len mem[_4658] + 32]
                                else:
                                    mem[floor32(mem[_4658]) + _4658 + 196] = mem[floor32(mem[_4658]) + _4658 + -(mem[_4658] % 32) + 228 len mem[_4658] % 32]
                                    require ext_code.size(address(_4574))
                                    call address(_4574).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4351, address(_4446), 128, mem[_4658], mem[_4658 + 196 len floor32(mem[_4658]) + 32]
                        else:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4513 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4577 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4577 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4577 + 36] = _4351
                                mem[_4577 + 68] = 0
                                mem[_4577 + 100] = this.address
                                mem[_4577 + 132] = 128
                                mem[_4577 + 164] = mem[_4577]
                                idx = 0
                                while idx < mem[_4577]:
                                    mem[idx + _4577 + 196] = mem[idx + _4577 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4577] % 32:
                                    require ext_code.size(address(_4513))
                                    call address(_4513).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4351, 0, address(this.address), 128, mem[_4577 + 164 len mem[_4577] + 32]
                                else:
                                    mem[floor32(mem[_4577]) + _4577 + 196] = mem[floor32(mem[_4577]) + _4577 + -(mem[_4577] % 32) + 228 len mem[_4577] % 32]
                                    require ext_code.size(address(_4513))
                                    call address(_4513).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4351, 0, address(this.address), 128, mem[_4577], mem[_4577 + 196 len floor32(mem[_4577]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4448 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4576 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4662 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4662 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4662 + 36] = _4351
                                mem[_4662 + 68] = 0
                                mem[_4662 + 100] = address(_4448)
                                mem[_4662 + 132] = 128
                                mem[_4662 + 164] = mem[_4662]
                                t = 0
                                while t < mem[_4662]:
                                    mem[t + _4662 + 196] = mem[t + _4662 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4662] % 32:
                                    require ext_code.size(address(_4576))
                                    call address(_4576).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4351, 0, address(_4448), 128, mem[_4662 + 164 len mem[_4662] + 32]
                                else:
                                    mem[floor32(mem[_4662]) + _4662 + 196] = mem[floor32(mem[_4662]) + _4662 + -(mem[_4662] % 32) + 228 len mem[_4662] % 32]
                                    require ext_code.size(address(_4576))
                                    call address(_4576).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4351, 0, address(_4448), 128, mem[_4662], mem[_4662 + 196 len floor32(mem[_4662]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293] = ('cd', 4).length
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] = ('cd', 132).length
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357] = 0
                idx = 0
                while idx < ('cd', 132).length - 1:
                    require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                    require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                        _4352 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4515 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4579 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4579 + 36] = 0
                                mem[_4579 + 68] = _4352
                                mem[_4579 + 100] = this.address
                                mem[_4579 + 132] = 128
                                mem[_4579 + 164] = mem[_4579]
                                s = 0
                                while s < mem[_4579]:
                                    mem[s + _4579 + 196] = mem[s + _4579 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4579] % 32:
                                    require ext_code.size(address(_4515))
                                    call address(_4515).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4352, address(this.address), 128, mem[_4579 + 164 len mem[_4579] + 32]
                                else:
                                    mem[floor32(mem[_4579]) + _4579 + 196] = mem[floor32(mem[_4579]) + _4579 + -(mem[_4579] % 32) + 228 len mem[_4579] % 32]
                                    require ext_code.size(address(_4515))
                                    call address(_4515).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4352, address(this.address), 128, mem[_4579], mem[_4579 + 196 len floor32(mem[_4579]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4450 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4578 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4666 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4666 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4666 + 36] = 0
                                mem[_4666 + 68] = _4352
                                mem[_4666 + 100] = address(_4450)
                                mem[_4666 + 132] = 128
                                mem[_4666 + 164] = mem[_4666]
                                s = 0
                                while s < mem[_4666]:
                                    mem[s + _4666 + 196] = mem[s + _4666 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4666] % 32:
                                    require ext_code.size(address(_4578))
                                    call address(_4578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4352, address(_4450), 128, mem[_4666 + 164 len mem[_4666] + 32]
                                else:
                                    mem[floor32(mem[_4666]) + _4666 + 196] = mem[floor32(mem[_4666]) + _4666 + -(mem[_4666] % 32) + 228 len mem[_4666] % 32]
                                    require ext_code.size(address(_4578))
                                    call address(_4578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4352, address(_4450), 128, mem[_4666], mem[_4666 + 196 len floor32(mem[_4666]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4517 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4581 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4581 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4581 + 36] = _4352
                                mem[_4581 + 68] = 0
                                mem[_4581 + 100] = this.address
                                mem[_4581 + 132] = 128
                                mem[_4581 + 164] = mem[_4581]
                                s = 0
                                while s < mem[_4581]:
                                    mem[s + _4581 + 196] = mem[s + _4581 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4581] % 32:
                                    require ext_code.size(address(_4517))
                                    call address(_4517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4352, 0, address(this.address), 128, mem[_4581 + 164 len mem[_4581] + 32]
                                else:
                                    mem[floor32(mem[_4581]) + _4581 + 196] = mem[floor32(mem[_4581]) + _4581 + -(mem[_4581] % 32) + 228 len mem[_4581] % 32]
                                    require ext_code.size(address(_4517))
                                    call address(_4517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4352, 0, address(this.address), 128, mem[_4581], mem[_4581 + 196 len floor32(mem[_4581]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4452 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4580 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4670 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4670 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4670 + 36] = _4352
                                mem[_4670 + 68] = 0
                                mem[_4670 + 100] = address(_4452)
                                mem[_4670 + 132] = 128
                                mem[_4670 + 164] = mem[_4670]
                                s = 0
                                while s < mem[_4670]:
                                    mem[s + _4670 + 196] = mem[s + _4670 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4670] % 32:
                                    require ext_code.size(address(_4580))
                                    call address(_4580).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4352, 0, address(_4452), 128, mem[_4670 + 164 len mem[_4670] + 32]
                                else:
                                    mem[floor32(mem[_4670]) + _4670 + 196] = mem[floor32(mem[_4670]) + _4670 + -(mem[_4670] % 32) + 228 len mem[_4670] % 32]
                                    require ext_code.size(address(_4580))
                                    call address(_4580).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4352, 0, address(_4452), 128, mem[_4670], mem[_4670 + 196 len floor32(mem[_4670]) + 32]
                    else:
                        _4353 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4519 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4583 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4583 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4583 + 36] = 0
                                mem[_4583 + 68] = _4353
                                mem[_4583 + 100] = this.address
                                mem[_4583 + 132] = 128
                                mem[_4583 + 164] = mem[_4583]
                                s = 0
                                while s < mem[_4583]:
                                    mem[s + _4583 + 196] = mem[s + _4583 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4583] % 32:
                                    require ext_code.size(address(_4519))
                                    call address(_4519).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4353, address(this.address), 128, mem[_4583 + 164 len mem[_4583] + 32]
                                else:
                                    mem[floor32(mem[_4583]) + _4583 + 196] = mem[floor32(mem[_4583]) + _4583 + -(mem[_4583] % 32) + 228 len mem[_4583] % 32]
                                    require ext_code.size(address(_4519))
                                    call address(_4519).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4353, address(this.address), 128, mem[_4583], mem[_4583 + 196 len floor32(mem[_4583]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4454 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4582 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4674 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4674 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4674 + 36] = 0
                                mem[_4674 + 68] = _4353
                                mem[_4674 + 100] = address(_4454)
                                mem[_4674 + 132] = 128
                                mem[_4674 + 164] = mem[_4674]
                                s = 0
                                while s < mem[_4674]:
                                    mem[s + _4674 + 196] = mem[s + _4674 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4674] % 32:
                                    require ext_code.size(address(_4582))
                                    call address(_4582).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4353, address(_4454), 128, mem[_4674 + 164 len mem[_4674] + 32]
                                else:
                                    mem[floor32(mem[_4674]) + _4674 + 196] = mem[floor32(mem[_4674]) + _4674 + -(mem[_4674] % 32) + 228 len mem[_4674] % 32]
                                    require ext_code.size(address(_4582))
                                    call address(_4582).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4353, address(_4454), 128, mem[_4674], mem[_4674 + 196 len floor32(mem[_4674]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4521 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4585 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4585 + 36] = _4353
                                mem[_4585 + 68] = 0
                                mem[_4585 + 100] = this.address
                                mem[_4585 + 132] = 128
                                mem[_4585 + 164] = mem[_4585]
                                s = 0
                                while s < mem[_4585]:
                                    mem[s + _4585 + 196] = mem[s + _4585 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4585] % 32:
                                    require ext_code.size(address(_4521))
                                    call address(_4521).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4353, 0, address(this.address), 128, mem[_4585 + 164 len mem[_4585] + 32]
                                else:
                                    mem[floor32(mem[_4585]) + _4585 + 196] = mem[floor32(mem[_4585]) + _4585 + -(mem[_4585] % 32) + 228 len mem[_4585] % 32]
                                    require ext_code.size(address(_4521))
                                    call address(_4521).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4353, 0, address(this.address), 128, mem[_4585], mem[_4585 + 196 len floor32(mem[_4585]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4456 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4584 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4678 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4678 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4678 + 36] = _4353
                                mem[_4678 + 68] = 0
                                mem[_4678 + 100] = address(_4456)
                                mem[_4678 + 132] = 128
                                mem[_4678 + 164] = mem[_4678]
                                s = 0
                                while s < mem[_4678]:
                                    mem[s + _4678 + 196] = mem[s + _4678 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4678] % 32:
                                    require ext_code.size(address(_4584))
                                    call address(_4584).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4353, 0, address(_4456), 128, mem[_4678 + 164 len mem[_4678] + 32]
                                else:
                                    mem[floor32(mem[_4678]) + _4678 + 196] = mem[floor32(mem[_4678]) + _4678 + -(mem[_4678] % 32) + 228 len mem[_4678] % 32]
                                    require ext_code.size(address(_4584))
                                    call address(_4584).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4353, 0, address(_4456), 128, mem[_4678], mem[_4678 + 196 len floor32(mem[_4678]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
        require 0 < ('cd', 132).length
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = s
        idx = 0
        while idx < ('cd', 132).length - 1:
            require idx < ('cd', 4).length
            require idx < ('cd', 132).length
            _2312 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx + 1 < ('cd', 132).length
            _2319 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
            if mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]:
                if address(_2312) == address(_2312):
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, '*'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, '+'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                            revert with 0, '*'
                        if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '*'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                else:
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, '*'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, '+'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                            revert with 0, '*'
                        if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '*'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
            else:
                if address(_2319) == address(_2312):
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, '*'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, '+'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                            revert with 0, '*'
                        if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '*'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                else:
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, '*'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, '+'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                            revert with 0, '*'
                        if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '*'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                            else:
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                    revert with 0, '*'
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '+'
                                require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
        if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] < cd[100]:
            revert with 0, 'J'
        require 0 < ('cd', 132).length
        require 0 < ('cd', 4).length
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 228] = address(('cd', 4)[0])
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 260] = s
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 68
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 224 len 4] = unknown_0xa9059cbb(?????)
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292 len 64] = 0, address(('cd', 4)[0]), Mask(224, 32, s) >> 32
        mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 384 len 4] = Mask(32, 64, s) >> 64
        call address(('cd', 132)[0]) with:
             gas gas_remaining wei
            args s, Mask(224, 32, address(('cd', 4)[0]), Mask(224, 32, s) >> 32) >> 32, mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not ('cd', 4).length:
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = ('cd', 4).length
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] = ('cd', 132).length
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356] = 0
                s = 0
                while s < ('cd', 132).length - 1:
                    require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                    require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                    require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                    if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                        _4354 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4523 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4587 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4587 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4587 + 36] = 0
                                mem[_4587 + 68] = _4354
                                mem[_4587 + 100] = this.address
                                mem[_4587 + 132] = 128
                                mem[_4587 + 164] = mem[_4587]
                                idx = 0
                                while idx < mem[_4587]:
                                    mem[idx + _4587 + 196] = mem[idx + _4587 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4587] % 32:
                                    require ext_code.size(address(_4523))
                                    call address(_4523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4354, address(this.address), 128, mem[_4587 + 164 len mem[_4587] + 32]
                                else:
                                    mem[floor32(mem[_4587]) + _4587 + 196] = mem[floor32(mem[_4587]) + _4587 + -(mem[_4587] % 32) + 228 len mem[_4587] % 32]
                                    require ext_code.size(address(_4523))
                                    call address(_4523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4354, address(this.address), 128, mem[_4587], mem[_4587 + 196 len floor32(mem[_4587]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4458 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4586 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4682 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4682 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4682 + 36] = 0
                                mem[_4682 + 68] = _4354
                                mem[_4682 + 100] = address(_4458)
                                mem[_4682 + 132] = 128
                                mem[_4682 + 164] = mem[_4682]
                                t = 0
                                while t < mem[_4682]:
                                    mem[t + _4682 + 196] = mem[t + _4682 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4682] % 32:
                                    require ext_code.size(address(_4586))
                                    call address(_4586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4354, address(_4458), 128, mem[_4682 + 164 len mem[_4682] + 32]
                                else:
                                    mem[floor32(mem[_4682]) + _4682 + 196] = mem[floor32(mem[_4682]) + _4682 + -(mem[_4682] % 32) + 228 len mem[_4682] % 32]
                                    require ext_code.size(address(_4586))
                                    call address(_4586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4354, address(_4458), 128, mem[_4682], mem[_4682 + 196 len floor32(mem[_4682]) + 32]
                        else:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4525 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4589 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4589 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4589 + 36] = _4354
                                mem[_4589 + 68] = 0
                                mem[_4589 + 100] = this.address
                                mem[_4589 + 132] = 128
                                mem[_4589 + 164] = mem[_4589]
                                idx = 0
                                while idx < mem[_4589]:
                                    mem[idx + _4589 + 196] = mem[idx + _4589 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4589] % 32:
                                    require ext_code.size(address(_4525))
                                    call address(_4525).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4354, 0, address(this.address), 128, mem[_4589 + 164 len mem[_4589] + 32]
                                else:
                                    mem[floor32(mem[_4589]) + _4589 + 196] = mem[floor32(mem[_4589]) + _4589 + -(mem[_4589] % 32) + 228 len mem[_4589] % 32]
                                    require ext_code.size(address(_4525))
                                    call address(_4525).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4354, 0, address(this.address), 128, mem[_4589], mem[_4589 + 196 len floor32(mem[_4589]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4460 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4588 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4686 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4686 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4686 + 36] = _4354
                                mem[_4686 + 68] = 0
                                mem[_4686 + 100] = address(_4460)
                                mem[_4686 + 132] = 128
                                mem[_4686 + 164] = mem[_4686]
                                t = 0
                                while t < mem[_4686]:
                                    mem[t + _4686 + 196] = mem[t + _4686 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4686] % 32:
                                    require ext_code.size(address(_4588))
                                    call address(_4588).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4354, 0, address(_4460), 128, mem[_4686 + 164 len mem[_4686] + 32]
                                else:
                                    mem[floor32(mem[_4686]) + _4686 + 196] = mem[floor32(mem[_4686]) + _4686 + -(mem[_4686] % 32) + 228 len mem[_4686] % 32]
                                    require ext_code.size(address(_4588))
                                    call address(_4588).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4354, 0, address(_4460), 128, mem[_4686], mem[_4686 + 196 len floor32(mem[_4686]) + 32]
                    else:
                        _4355 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4527 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4591 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4591 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4591 + 36] = 0
                                mem[_4591 + 68] = _4355
                                mem[_4591 + 100] = this.address
                                mem[_4591 + 132] = 128
                                mem[_4591 + 164] = mem[_4591]
                                idx = 0
                                while idx < mem[_4591]:
                                    mem[idx + _4591 + 196] = mem[idx + _4591 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4591] % 32:
                                    require ext_code.size(address(_4527))
                                    call address(_4527).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4355, address(this.address), 128, mem[_4591 + 164 len mem[_4591] + 32]
                                else:
                                    mem[floor32(mem[_4591]) + _4591 + 196] = mem[floor32(mem[_4591]) + _4591 + -(mem[_4591] % 32) + 228 len mem[_4591] % 32]
                                    require ext_code.size(address(_4527))
                                    call address(_4527).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4355, address(this.address), 128, mem[_4591], mem[_4591 + 196 len floor32(mem[_4591]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4462 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4590 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4690 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4690 + 36] = 0
                                mem[_4690 + 68] = _4355
                                mem[_4690 + 100] = address(_4462)
                                mem[_4690 + 132] = 128
                                mem[_4690 + 164] = mem[_4690]
                                t = 0
                                while t < mem[_4690]:
                                    mem[t + _4690 + 196] = mem[t + _4690 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4690] % 32:
                                    require ext_code.size(address(_4590))
                                    call address(_4590).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4355, address(_4462), 128, mem[_4690 + 164 len mem[_4690] + 32]
                                else:
                                    mem[floor32(mem[_4690]) + _4690 + 196] = mem[floor32(mem[_4690]) + _4690 + -(mem[_4690] % 32) + 228 len mem[_4690] % 32]
                                    require ext_code.size(address(_4590))
                                    call address(_4590).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4355, address(_4462), 128, mem[_4690], mem[_4690 + 196 len floor32(mem[_4690]) + 32]
                        else:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4529 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4593 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4593 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4593 + 36] = _4355
                                mem[_4593 + 68] = 0
                                mem[_4593 + 100] = this.address
                                mem[_4593 + 132] = 128
                                mem[_4593 + 164] = mem[_4593]
                                idx = 0
                                while idx < mem[_4593]:
                                    mem[idx + _4593 + 196] = mem[idx + _4593 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4593] % 32:
                                    require ext_code.size(address(_4529))
                                    call address(_4529).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4355, 0, address(this.address), 128, mem[_4593 + 164 len mem[_4593] + 32]
                                else:
                                    mem[floor32(mem[_4593]) + _4593 + 196] = mem[floor32(mem[_4593]) + _4593 + -(mem[_4593] % 32) + 228 len mem[_4593] % 32]
                                    require ext_code.size(address(_4529))
                                    call address(_4529).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4355, 0, address(this.address), 128, mem[_4593], mem[_4593 + 196 len floor32(mem[_4593]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4464 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4592 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4694 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4694 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4694 + 36] = _4355
                                mem[_4694 + 68] = 0
                                mem[_4694 + 100] = address(_4464)
                                mem[_4694 + 132] = 128
                                mem[_4694 + 164] = mem[_4694]
                                t = 0
                                while t < mem[_4694]:
                                    mem[t + _4694 + 196] = mem[t + _4694 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4694] % 32:
                                    require ext_code.size(address(_4592))
                                    call address(_4592).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4355, 0, address(_4464), 128, mem[_4694 + 164 len mem[_4694] + 32]
                                else:
                                    mem[floor32(mem[_4694]) + _4694 + 196] = mem[floor32(mem[_4694]) + _4694 + -(mem[_4694] % 32) + 228 len mem[_4694] % 32]
                                    require ext_code.size(address(_4592))
                                    call address(_4592).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4355, 0, address(_4464), 128, mem[_4694], mem[_4694 + 196 len floor32(mem[_4694]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
            else:
                require ('cd', 4).length >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = ('cd', 4).length
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] = ('cd', 132).length
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356] = 0
                idx = 0
                while idx < ('cd', 132).length - 1:
                    require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                    require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                        _4356 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4531 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4595 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4595 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4595 + 36] = 0
                                mem[_4595 + 68] = _4356
                                mem[_4595 + 100] = this.address
                                mem[_4595 + 132] = 128
                                mem[_4595 + 164] = mem[_4595]
                                s = 0
                                while s < mem[_4595]:
                                    mem[s + _4595 + 196] = mem[s + _4595 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4595] % 32:
                                    require ext_code.size(address(_4531))
                                    call address(_4531).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4356, address(this.address), 128, mem[_4595 + 164 len mem[_4595] + 32]
                                else:
                                    mem[floor32(mem[_4595]) + _4595 + 196] = mem[floor32(mem[_4595]) + _4595 + -(mem[_4595] % 32) + 228 len mem[_4595] % 32]
                                    require ext_code.size(address(_4531))
                                    call address(_4531).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4356, address(this.address), 128, mem[_4595], mem[_4595 + 196 len floor32(mem[_4595]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4466 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4594 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4698 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4698 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4698 + 36] = 0
                                mem[_4698 + 68] = _4356
                                mem[_4698 + 100] = address(_4466)
                                mem[_4698 + 132] = 128
                                mem[_4698 + 164] = mem[_4698]
                                s = 0
                                while s < mem[_4698]:
                                    mem[s + _4698 + 196] = mem[s + _4698 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4698] % 32:
                                    require ext_code.size(address(_4594))
                                    call address(_4594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4356, address(_4466), 128, mem[_4698 + 164 len mem[_4698] + 32]
                                else:
                                    mem[floor32(mem[_4698]) + _4698 + 196] = mem[floor32(mem[_4698]) + _4698 + -(mem[_4698] % 32) + 228 len mem[_4698] % 32]
                                    require ext_code.size(address(_4594))
                                    call address(_4594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4356, address(_4466), 128, mem[_4698], mem[_4698 + 196 len floor32(mem[_4698]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4533 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4597 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4597 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4597 + 36] = _4356
                                mem[_4597 + 68] = 0
                                mem[_4597 + 100] = this.address
                                mem[_4597 + 132] = 128
                                mem[_4597 + 164] = mem[_4597]
                                s = 0
                                while s < mem[_4597]:
                                    mem[s + _4597 + 196] = mem[s + _4597 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4597] % 32:
                                    require ext_code.size(address(_4533))
                                    call address(_4533).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4356, 0, address(this.address), 128, mem[_4597 + 164 len mem[_4597] + 32]
                                else:
                                    mem[floor32(mem[_4597]) + _4597 + 196] = mem[floor32(mem[_4597]) + _4597 + -(mem[_4597] % 32) + 228 len mem[_4597] % 32]
                                    require ext_code.size(address(_4533))
                                    call address(_4533).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4356, 0, address(this.address), 128, mem[_4597], mem[_4597 + 196 len floor32(mem[_4597]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4468 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4596 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4702 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4702 + 36] = _4356
                                mem[_4702 + 68] = 0
                                mem[_4702 + 100] = address(_4468)
                                mem[_4702 + 132] = 128
                                mem[_4702 + 164] = mem[_4702]
                                s = 0
                                while s < mem[_4702]:
                                    mem[s + _4702 + 196] = mem[s + _4702 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4702] % 32:
                                    require ext_code.size(address(_4596))
                                    call address(_4596).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4356, 0, address(_4468), 128, mem[_4702 + 164 len mem[_4702] + 32]
                                else:
                                    mem[floor32(mem[_4702]) + _4702 + 196] = mem[floor32(mem[_4702]) + _4702 + -(mem[_4702] % 32) + 228 len mem[_4702] % 32]
                                    require ext_code.size(address(_4596))
                                    call address(_4596).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4356, 0, address(_4468), 128, mem[_4702], mem[_4702 + 196 len floor32(mem[_4702]) + 32]
                    else:
                        _4357 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4535 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4599 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4599 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4599 + 36] = 0
                                mem[_4599 + 68] = _4357
                                mem[_4599 + 100] = this.address
                                mem[_4599 + 132] = 128
                                mem[_4599 + 164] = mem[_4599]
                                s = 0
                                while s < mem[_4599]:
                                    mem[s + _4599 + 196] = mem[s + _4599 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4599] % 32:
                                    require ext_code.size(address(_4535))
                                    call address(_4535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4357, address(this.address), 128, mem[_4599 + 164 len mem[_4599] + 32]
                                else:
                                    mem[floor32(mem[_4599]) + _4599 + 196] = mem[floor32(mem[_4599]) + _4599 + -(mem[_4599] % 32) + 228 len mem[_4599] % 32]
                                    require ext_code.size(address(_4535))
                                    call address(_4535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4357, address(this.address), 128, mem[_4599], mem[_4599 + 196 len floor32(mem[_4599]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4470 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4598 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4706 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4706 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4706 + 36] = 0
                                mem[_4706 + 68] = _4357
                                mem[_4706 + 100] = address(_4470)
                                mem[_4706 + 132] = 128
                                mem[_4706 + 164] = mem[_4706]
                                s = 0
                                while s < mem[_4706]:
                                    mem[s + _4706 + 196] = mem[s + _4706 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4706] % 32:
                                    require ext_code.size(address(_4598))
                                    call address(_4598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4357, address(_4470), 128, mem[_4706 + 164 len mem[_4706] + 32]
                                else:
                                    mem[floor32(mem[_4706]) + _4706 + 196] = mem[floor32(mem[_4706]) + _4706 + -(mem[_4706] % 32) + 228 len mem[_4706] % 32]
                                    require ext_code.size(address(_4598))
                                    call address(_4598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4357, address(_4470), 128, mem[_4706], mem[_4706 + 196 len floor32(mem[_4706]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4537 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4601 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4601 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4601 + 36] = _4357
                                mem[_4601 + 68] = 0
                                mem[_4601 + 100] = this.address
                                mem[_4601 + 132] = 128
                                mem[_4601 + 164] = mem[_4601]
                                s = 0
                                while s < mem[_4601]:
                                    mem[s + _4601 + 196] = mem[s + _4601 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4601] % 32:
                                    require ext_code.size(address(_4537))
                                    call address(_4537).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4357, 0, address(this.address), 128, mem[_4601 + 164 len mem[_4601] + 32]
                                else:
                                    mem[floor32(mem[_4601]) + _4601 + 196] = mem[floor32(mem[_4601]) + _4601 + -(mem[_4601] % 32) + 228 len mem[_4601] % 32]
                                    require ext_code.size(address(_4537))
                                    call address(_4537).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4357, 0, address(this.address), 128, mem[_4601], mem[_4601 + 196 len floor32(mem[_4601]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4472 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                _4600 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                _4710 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4710 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4710 + 36] = _4357
                                mem[_4710 + 68] = 0
                                mem[_4710 + 100] = address(_4472)
                                mem[_4710 + 132] = 128
                                mem[_4710 + 164] = mem[_4710]
                                s = 0
                                while s < mem[_4710]:
                                    mem[s + _4710 + 196] = mem[s + _4710 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4710] % 32:
                                    require ext_code.size(address(_4600))
                                    call address(_4600).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4357, 0, address(_4472), 128, mem[_4710 + 164 len mem[_4710] + 32]
                                else:
                                    mem[floor32(mem[_4710]) + _4710 + 196] = mem[floor32(mem[_4710]) + _4710 + -(mem[_4710] % 32) + 228 len mem[_4710] % 32]
                                    require ext_code.size(address(_4600))
                                    call address(_4600).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4357, 0, address(_4472), 128, mem[_4710], mem[_4710 + 196 len floor32(mem[_4710]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = return_data.size
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not return_data.size:
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293] = ('cd', 4).length
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] = ('cd', 132).length
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357] = 0
                s = 0
                while s < ('cd', 132).length - 1:
                    require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                    require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                    require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                    if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                        _4358 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4539 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4603 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4603 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4603 + 36] = 0
                                mem[_4603 + 68] = _4358
                                mem[_4603 + 100] = this.address
                                mem[_4603 + 132] = 128
                                mem[_4603 + 164] = mem[_4603]
                                idx = 0
                                while idx < mem[_4603]:
                                    mem[idx + _4603 + 196] = mem[idx + _4603 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4603] % 32:
                                    require ext_code.size(address(_4539))
                                    call address(_4539).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4358, address(this.address), 128, mem[_4603 + 164 len mem[_4603] + 32]
                                else:
                                    mem[floor32(mem[_4603]) + _4603 + 196] = mem[floor32(mem[_4603]) + _4603 + -(mem[_4603] % 32) + 228 len mem[_4603] % 32]
                                    require ext_code.size(address(_4539))
                                    call address(_4539).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4358, address(this.address), 128, mem[_4603], mem[_4603 + 196 len floor32(mem[_4603]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4474 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4602 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4714 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4714 + 36] = 0
                                mem[_4714 + 68] = _4358
                                mem[_4714 + 100] = address(_4474)
                                mem[_4714 + 132] = 128
                                mem[_4714 + 164] = mem[_4714]
                                t = 0
                                while t < mem[_4714]:
                                    mem[t + _4714 + 196] = mem[t + _4714 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4714] % 32:
                                    require ext_code.size(address(_4602))
                                    call address(_4602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4358, address(_4474), 128, mem[_4714 + 164 len mem[_4714] + 32]
                                else:
                                    mem[floor32(mem[_4714]) + _4714 + 196] = mem[floor32(mem[_4714]) + _4714 + -(mem[_4714] % 32) + 228 len mem[_4714] % 32]
                                    require ext_code.size(address(_4602))
                                    call address(_4602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4358, address(_4474), 128, mem[_4714], mem[_4714 + 196 len floor32(mem[_4714]) + 32]
                        else:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4541 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4605 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4605 + 36] = _4358
                                mem[_4605 + 68] = 0
                                mem[_4605 + 100] = this.address
                                mem[_4605 + 132] = 128
                                mem[_4605 + 164] = mem[_4605]
                                idx = 0
                                while idx < mem[_4605]:
                                    mem[idx + _4605 + 196] = mem[idx + _4605 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4605] % 32:
                                    require ext_code.size(address(_4541))
                                    call address(_4541).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4358, 0, address(this.address), 128, mem[_4605 + 164 len mem[_4605] + 32]
                                else:
                                    mem[floor32(mem[_4605]) + _4605 + 196] = mem[floor32(mem[_4605]) + _4605 + -(mem[_4605] % 32) + 228 len mem[_4605] % 32]
                                    require ext_code.size(address(_4541))
                                    call address(_4541).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4358, 0, address(this.address), 128, mem[_4605], mem[_4605 + 196 len floor32(mem[_4605]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4476 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4604 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4718 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4718 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4718 + 36] = _4358
                                mem[_4718 + 68] = 0
                                mem[_4718 + 100] = address(_4476)
                                mem[_4718 + 132] = 128
                                mem[_4718 + 164] = mem[_4718]
                                t = 0
                                while t < mem[_4718]:
                                    mem[t + _4718 + 196] = mem[t + _4718 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4718] % 32:
                                    require ext_code.size(address(_4604))
                                    call address(_4604).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4358, 0, address(_4476), 128, mem[_4718 + 164 len mem[_4718] + 32]
                                else:
                                    mem[floor32(mem[_4718]) + _4718 + 196] = mem[floor32(mem[_4718]) + _4718 + -(mem[_4718] % 32) + 228 len mem[_4718] % 32]
                                    require ext_code.size(address(_4604))
                                    call address(_4604).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4358, 0, address(_4476), 128, mem[_4718], mem[_4718 + 196 len floor32(mem[_4718]) + 32]
                    else:
                        _4359 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4543 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4607 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4607 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4607 + 36] = 0
                                mem[_4607 + 68] = _4359
                                mem[_4607 + 100] = this.address
                                mem[_4607 + 132] = 128
                                mem[_4607 + 164] = mem[_4607]
                                idx = 0
                                while idx < mem[_4607]:
                                    mem[idx + _4607 + 196] = mem[idx + _4607 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4607] % 32:
                                    require ext_code.size(address(_4543))
                                    call address(_4543).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4359, address(this.address), 128, mem[_4607 + 164 len mem[_4607] + 32]
                                else:
                                    mem[floor32(mem[_4607]) + _4607 + 196] = mem[floor32(mem[_4607]) + _4607 + -(mem[_4607] % 32) + 228 len mem[_4607] % 32]
                                    require ext_code.size(address(_4543))
                                    call address(_4543).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4359, address(this.address), 128, mem[_4607], mem[_4607 + 196 len floor32(mem[_4607]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4478 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4606 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4722 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4722 + 36] = 0
                                mem[_4722 + 68] = _4359
                                mem[_4722 + 100] = address(_4478)
                                mem[_4722 + 132] = 128
                                mem[_4722 + 164] = mem[_4722]
                                t = 0
                                while t < mem[_4722]:
                                    mem[t + _4722 + 196] = mem[t + _4722 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4722] % 32:
                                    require ext_code.size(address(_4606))
                                    call address(_4606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4359, address(_4478), 128, mem[_4722 + 164 len mem[_4722] + 32]
                                else:
                                    mem[floor32(mem[_4722]) + _4722 + 196] = mem[floor32(mem[_4722]) + _4722 + -(mem[_4722] % 32) + 228 len mem[_4722] % 32]
                                    require ext_code.size(address(_4606))
                                    call address(_4606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4359, address(_4478), 128, mem[_4722], mem[_4722 + 196 len floor32(mem[_4722]) + 32]
                        else:
                            if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4545 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4609 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4609 + 36] = _4359
                                mem[_4609 + 68] = 0
                                mem[_4609 + 100] = this.address
                                mem[_4609 + 132] = 128
                                mem[_4609 + 164] = mem[_4609]
                                idx = 0
                                while idx < mem[_4609]:
                                    mem[idx + _4609 + 196] = mem[idx + _4609 + 32]
                                    idx = idx + 32
                                    continue 
                                if not mem[_4609] % 32:
                                    require ext_code.size(address(_4545))
                                    call address(_4545).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4359, 0, address(this.address), 128, mem[_4609 + 164 len mem[_4609] + 32]
                                else:
                                    mem[floor32(mem[_4609]) + _4609 + 196] = mem[floor32(mem[_4609]) + _4609 + -(mem[_4609] % 32) + 228 len mem[_4609] % 32]
                                    require ext_code.size(address(_4545))
                                    call address(_4545).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4359, 0, address(this.address), 128, mem[_4609], mem[_4609 + 196 len floor32(mem[_4609]) + 32]
                            else:
                                require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4480 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4608 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4726 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4726 + 36] = _4359
                                mem[_4726 + 68] = 0
                                mem[_4726 + 100] = address(_4480)
                                mem[_4726 + 132] = 128
                                mem[_4726 + 164] = mem[_4726]
                                t = 0
                                while t < mem[_4726]:
                                    mem[t + _4726 + 196] = mem[t + _4726 + 32]
                                    t = t + 32
                                    continue 
                                if not mem[_4726] % 32:
                                    require ext_code.size(address(_4608))
                                    call address(_4608).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4359, 0, address(_4480), 128, mem[_4726 + 164 len mem[_4726] + 32]
                                else:
                                    mem[floor32(mem[_4726]) + _4726 + 196] = mem[floor32(mem[_4726]) + _4726 + -(mem[_4726] % 32) + 228 len mem[_4726] % 32]
                                    require ext_code.size(address(_4608))
                                    call address(_4608).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4359, 0, address(_4480), 128, mem[_4726], mem[_4726 + 196 len floor32(mem[_4726]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293] = ('cd', 4).length
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] = ('cd', 132).length
                mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357] = 0
                idx = 0
                while idx < ('cd', 132).length - 1:
                    require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                    require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                    if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                        _4360 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4547 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4611 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4611 + 36] = 0
                                mem[_4611 + 68] = _4360
                                mem[_4611 + 100] = this.address
                                mem[_4611 + 132] = 128
                                mem[_4611 + 164] = mem[_4611]
                                s = 0
                                while s < mem[_4611]:
                                    mem[s + _4611 + 196] = mem[s + _4611 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4611] % 32:
                                    require ext_code.size(address(_4547))
                                    call address(_4547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4360, address(this.address), 128, mem[_4611 + 164 len mem[_4611] + 32]
                                else:
                                    mem[floor32(mem[_4611]) + _4611 + 196] = mem[floor32(mem[_4611]) + _4611 + -(mem[_4611] % 32) + 228 len mem[_4611] % 32]
                                    require ext_code.size(address(_4547))
                                    call address(_4547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4360, address(this.address), 128, mem[_4611], mem[_4611 + 196 len floor32(mem[_4611]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4482 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4610 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4730 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4730 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4730 + 36] = 0
                                mem[_4730 + 68] = _4360
                                mem[_4730 + 100] = address(_4482)
                                mem[_4730 + 132] = 128
                                mem[_4730 + 164] = mem[_4730]
                                s = 0
                                while s < mem[_4730]:
                                    mem[s + _4730 + 196] = mem[s + _4730 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4730] % 32:
                                    require ext_code.size(address(_4610))
                                    call address(_4610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4360, address(_4482), 128, mem[_4730 + 164 len mem[_4730] + 32]
                                else:
                                    mem[floor32(mem[_4730]) + _4730 + 196] = mem[floor32(mem[_4730]) + _4730 + -(mem[_4730] % 32) + 228 len mem[_4730] % 32]
                                    require ext_code.size(address(_4610))
                                    call address(_4610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4360, address(_4482), 128, mem[_4730], mem[_4730 + 196 len floor32(mem[_4730]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4549 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4613 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4613 + 36] = _4360
                                mem[_4613 + 68] = 0
                                mem[_4613 + 100] = this.address
                                mem[_4613 + 132] = 128
                                mem[_4613 + 164] = mem[_4613]
                                s = 0
                                while s < mem[_4613]:
                                    mem[s + _4613 + 196] = mem[s + _4613 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4613] % 32:
                                    require ext_code.size(address(_4549))
                                    call address(_4549).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4360, 0, address(this.address), 128, mem[_4613 + 164 len mem[_4613] + 32]
                                else:
                                    mem[floor32(mem[_4613]) + _4613 + 196] = mem[floor32(mem[_4613]) + _4613 + -(mem[_4613] % 32) + 228 len mem[_4613] % 32]
                                    require ext_code.size(address(_4549))
                                    call address(_4549).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4360, 0, address(this.address), 128, mem[_4613], mem[_4613 + 196 len floor32(mem[_4613]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4484 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4612 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4734 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4734 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4734 + 36] = _4360
                                mem[_4734 + 68] = 0
                                mem[_4734 + 100] = address(_4484)
                                mem[_4734 + 132] = 128
                                mem[_4734 + 164] = mem[_4734]
                                s = 0
                                while s < mem[_4734]:
                                    mem[s + _4734 + 196] = mem[s + _4734 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4734] % 32:
                                    require ext_code.size(address(_4612))
                                    call address(_4612).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4360, 0, address(_4484), 128, mem[_4734 + 164 len mem[_4734] + 32]
                                else:
                                    mem[floor32(mem[_4734]) + _4734 + 196] = mem[floor32(mem[_4734]) + _4734 + -(mem[_4734] % 32) + 228 len mem[_4734] % 32]
                                    require ext_code.size(address(_4612))
                                    call address(_4612).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4360, 0, address(_4484), 128, mem[_4734], mem[_4734 + 196 len floor32(mem[_4734]) + 32]
                    else:
                        _4361 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4551 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4615 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4615 + 36] = 0
                                mem[_4615 + 68] = _4361
                                mem[_4615 + 100] = this.address
                                mem[_4615 + 132] = 128
                                mem[_4615 + 164] = mem[_4615]
                                s = 0
                                while s < mem[_4615]:
                                    mem[s + _4615 + 196] = mem[s + _4615 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4615] % 32:
                                    require ext_code.size(address(_4551))
                                    call address(_4551).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4361, address(this.address), 128, mem[_4615 + 164 len mem[_4615] + 32]
                                else:
                                    mem[floor32(mem[_4615]) + _4615 + 196] = mem[floor32(mem[_4615]) + _4615 + -(mem[_4615] % 32) + 228 len mem[_4615] % 32]
                                    require ext_code.size(address(_4551))
                                    call address(_4551).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4361, address(this.address), 128, mem[_4615], mem[_4615 + 196 len floor32(mem[_4615]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4486 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4614 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4738 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4738 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4738 + 36] = 0
                                mem[_4738 + 68] = _4361
                                mem[_4738 + 100] = address(_4486)
                                mem[_4738 + 132] = 128
                                mem[_4738 + 164] = mem[_4738]
                                s = 0
                                while s < mem[_4738]:
                                    mem[s + _4738 + 196] = mem[s + _4738 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4738] % 32:
                                    require ext_code.size(address(_4614))
                                    call address(_4614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4361, address(_4486), 128, mem[_4738 + 164 len mem[_4738] + 32]
                                else:
                                    mem[floor32(mem[_4738]) + _4738 + 196] = mem[floor32(mem[_4738]) + _4738 + -(mem[_4738] % 32) + 228 len mem[_4738] % 32]
                                    require ext_code.size(address(_4614))
                                    call address(_4614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4361, address(_4486), 128, mem[_4738], mem[_4738 + 196 len floor32(mem[_4738]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4553 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4617 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4617 + 36] = _4361
                                mem[_4617 + 68] = 0
                                mem[_4617 + 100] = this.address
                                mem[_4617 + 132] = 128
                                mem[_4617 + 164] = mem[_4617]
                                s = 0
                                while s < mem[_4617]:
                                    mem[s + _4617 + 196] = mem[s + _4617 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4617] % 32:
                                    require ext_code.size(address(_4553))
                                    call address(_4553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4361, 0, address(this.address), 128, mem[_4617 + 164 len mem[_4617] + 32]
                                else:
                                    mem[floor32(mem[_4617]) + _4617 + 196] = mem[floor32(mem[_4617]) + _4617 + -(mem[_4617] % 32) + 228 len mem[_4617] % 32]
                                    require ext_code.size(address(_4553))
                                    call address(_4553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4361, 0, address(this.address), 128, mem[_4617], mem[_4617 + 196 len floor32(mem[_4617]) + 32]
                            else:
                                require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4488 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                _4616 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                _4742 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4742 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4742 + 36] = _4361
                                mem[_4742 + 68] = 0
                                mem[_4742 + 100] = address(_4488)
                                mem[_4742 + 132] = 128
                                mem[_4742 + 164] = mem[_4742]
                                s = 0
                                while s < mem[_4742]:
                                    mem[s + _4742 + 196] = mem[s + _4742 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4742] % 32:
                                    require ext_code.size(address(_4616))
                                    call address(_4616).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4361, 0, address(_4488), 128, mem[_4742 + 164 len mem[_4742] + 32]
                                else:
                                    mem[floor32(mem[_4742]) + _4742 + 196] = mem[floor32(mem[_4742]) + _4742 + -(mem[_4742] % 32) + 228 len mem[_4742] % 32]
                                    require ext_code.size(address(_4616))
                                    call address(_4616).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4361, 0, address(_4488), 128, mem[_4742], mem[_4742 + 196 len floor32(mem[_4742]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
}

function sub_171a1577(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 32, 19, 0xfe4f776e61626c653a20464f5242494444454e32000000000000000000000000
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = cd[68]
    while uint8(idx) < ('cd', 132).length - 1:
        require uint8(idx) < ('cd', 4).length
        require ext_code.size(address(cd[((32 * uint8(idx)) + cd[4] + 36)]))
        staticcall address(cd[((32 * uint8(idx)) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require uint8(idx + 1) < ('cd', 132).length
        require uint8(idx) < ('cd', 132).length
        if address(cd[((32 * uint8(idx)) + cd[132] + 36)]) < address(cd[((32 * uint8(idx + 1)) + cd[132] + 36)]):
            mem[96] = Mask(112, 0, ext_call.return_data[0])
            mem[128] = Mask(112, 0, ext_call.return_data[32])
            emit 0xf9038999: ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * s) - (cd[36] * s):
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * s * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * s * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * s) - (cd[36] * s)
                continue 
        else:
            mem[96] = Mask(112, 0, ext_call.return_data[32])
            mem[128] = Mask(112, 0, ext_call.return_data[0])
            emit 0xf9038999: ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * s) - (cd[36] * s):
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * s * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * s * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * s) - (cd[36] * s)
                continue 
        revert
    if s >= cd[100]:
        mem[96] = ('cd', 4).length
        mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 132).length
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
        require ('cd', 132).length <= test266151307()
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] = ('cd', 132).length
        mem[64] = (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192
        if not ('cd', 132).length:
            require 0 < ('cd', 132).length
            mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = s
            idx = 0
            while idx < ('cd', 132).length - 1:
                require idx < ('cd', 4).length
                require idx < ('cd', 132).length
                _2313 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                require idx + 1 < ('cd', 132).length
                _2320 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]:
                    if address(_2313) == address(_2313):
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                else:
                    if address(_2320) == address(_2313):
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
            if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] < cd[100]:
                revert with 0, 'J'
            require 0 < ('cd', 132).length
            require 0 < ('cd', 4).length
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 228] = address(('cd', 4)[0])
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 260] = s
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 68
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 224 len 4] = unknown_0xa9059cbb(?????)
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292 len 64] = 0, address(('cd', 4)[0]), Mask(224, 32, s) >> 32
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 384 len 4] = Mask(32, 64, s) >> 64
            call address(('cd', 132)[0]) with:
                 gas gas_remaining wei
                args s, Mask(224, 32, address(('cd', 4)[0]), Mask(224, 32, s) >> 32) >> 32, mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 356 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not ('cd', 4).length:
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356] = 0
                    s = 0
                    while s < ('cd', 132).length - 1:
                        require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                        require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                        require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            _4350 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4495 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4559 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4559 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4559 + 36] = 0
                                    mem[_4559 + 68] = _4350
                                    mem[_4559 + 100] = this.address
                                    mem[_4559 + 132] = 128
                                    mem[_4559 + 164] = mem[_4559]
                                    idx = 0
                                    while idx < mem[_4559]:
                                        mem[idx + _4559 + 196] = mem[idx + _4559 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4559] % 32:
                                        require ext_code.size(address(_4495))
                                        call address(_4495).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4350, address(this.address), 128, mem[_4559 + 164 len mem[_4559] + 32]
                                    else:
                                        mem[floor32(mem[_4559]) + _4559 + 196] = mem[floor32(mem[_4559]) + _4559 + -(mem[_4559] % 32) + 228 len mem[_4559] % 32]
                                        require ext_code.size(address(_4495))
                                        call address(_4495).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4350, address(this.address), 128, mem[_4559], mem[_4559 + 196 len floor32(mem[_4559]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4430 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4558 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4622 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4622 + 36] = 0
                                    mem[_4622 + 68] = _4350
                                    mem[_4622 + 100] = address(_4430)
                                    mem[_4622 + 132] = 128
                                    mem[_4622 + 164] = mem[_4622]
                                    t = 0
                                    while t < mem[_4622]:
                                        mem[t + _4622 + 196] = mem[t + _4622 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4622] % 32:
                                        require ext_code.size(address(_4558))
                                        call address(_4558).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4350, address(_4430), 128, mem[_4622 + 164 len mem[_4622] + 32]
                                    else:
                                        mem[floor32(mem[_4622]) + _4622 + 196] = mem[floor32(mem[_4622]) + _4622 + -(mem[_4622] % 32) + 228 len mem[_4622] % 32]
                                        require ext_code.size(address(_4558))
                                        call address(_4558).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4350, address(_4430), 128, mem[_4622], mem[_4622 + 196 len floor32(mem[_4622]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4497 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4561 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4561 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4561 + 36] = _4350
                                    mem[_4561 + 68] = 0
                                    mem[_4561 + 100] = this.address
                                    mem[_4561 + 132] = 128
                                    mem[_4561 + 164] = mem[_4561]
                                    idx = 0
                                    while idx < mem[_4561]:
                                        mem[idx + _4561 + 196] = mem[idx + _4561 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4561] % 32:
                                        require ext_code.size(address(_4497))
                                        call address(_4497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4350, 0, address(this.address), 128, mem[_4561 + 164 len mem[_4561] + 32]
                                    else:
                                        mem[floor32(mem[_4561]) + _4561 + 196] = mem[floor32(mem[_4561]) + _4561 + -(mem[_4561] % 32) + 228 len mem[_4561] % 32]
                                        require ext_code.size(address(_4497))
                                        call address(_4497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4350, 0, address(this.address), 128, mem[_4561], mem[_4561 + 196 len floor32(mem[_4561]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4432 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4560 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4626 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4626 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4626 + 36] = _4350
                                    mem[_4626 + 68] = 0
                                    mem[_4626 + 100] = address(_4432)
                                    mem[_4626 + 132] = 128
                                    mem[_4626 + 164] = mem[_4626]
                                    t = 0
                                    while t < mem[_4626]:
                                        mem[t + _4626 + 196] = mem[t + _4626 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4626] % 32:
                                        require ext_code.size(address(_4560))
                                        call address(_4560).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4350, 0, address(_4432), 128, mem[_4626 + 164 len mem[_4626] + 32]
                                    else:
                                        mem[floor32(mem[_4626]) + _4626 + 196] = mem[floor32(mem[_4626]) + _4626 + -(mem[_4626] % 32) + 228 len mem[_4626] % 32]
                                        require ext_code.size(address(_4560))
                                        call address(_4560).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4350, 0, address(_4432), 128, mem[_4626], mem[_4626 + 196 len floor32(mem[_4626]) + 32]
                        else:
                            _4351 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4499 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4563 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4563 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4563 + 36] = 0
                                    mem[_4563 + 68] = _4351
                                    mem[_4563 + 100] = this.address
                                    mem[_4563 + 132] = 128
                                    mem[_4563 + 164] = mem[_4563]
                                    idx = 0
                                    while idx < mem[_4563]:
                                        mem[idx + _4563 + 196] = mem[idx + _4563 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4563] % 32:
                                        require ext_code.size(address(_4499))
                                        call address(_4499).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4351, address(this.address), 128, mem[_4563 + 164 len mem[_4563] + 32]
                                    else:
                                        mem[floor32(mem[_4563]) + _4563 + 196] = mem[floor32(mem[_4563]) + _4563 + -(mem[_4563] % 32) + 228 len mem[_4563] % 32]
                                        require ext_code.size(address(_4499))
                                        call address(_4499).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4351, address(this.address), 128, mem[_4563], mem[_4563 + 196 len floor32(mem[_4563]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4434 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4562 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4630 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4630 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4630 + 36] = 0
                                    mem[_4630 + 68] = _4351
                                    mem[_4630 + 100] = address(_4434)
                                    mem[_4630 + 132] = 128
                                    mem[_4630 + 164] = mem[_4630]
                                    t = 0
                                    while t < mem[_4630]:
                                        mem[t + _4630 + 196] = mem[t + _4630 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4630] % 32:
                                        require ext_code.size(address(_4562))
                                        call address(_4562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4351, address(_4434), 128, mem[_4630 + 164 len mem[_4630] + 32]
                                    else:
                                        mem[floor32(mem[_4630]) + _4630 + 196] = mem[floor32(mem[_4630]) + _4630 + -(mem[_4630] % 32) + 228 len mem[_4630] % 32]
                                        require ext_code.size(address(_4562))
                                        call address(_4562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4351, address(_4434), 128, mem[_4630], mem[_4630 + 196 len floor32(mem[_4630]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4501 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4565 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4565 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4565 + 36] = _4351
                                    mem[_4565 + 68] = 0
                                    mem[_4565 + 100] = this.address
                                    mem[_4565 + 132] = 128
                                    mem[_4565 + 164] = mem[_4565]
                                    idx = 0
                                    while idx < mem[_4565]:
                                        mem[idx + _4565 + 196] = mem[idx + _4565 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4565] % 32:
                                        require ext_code.size(address(_4501))
                                        call address(_4501).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4351, 0, address(this.address), 128, mem[_4565 + 164 len mem[_4565] + 32]
                                    else:
                                        mem[floor32(mem[_4565]) + _4565 + 196] = mem[floor32(mem[_4565]) + _4565 + -(mem[_4565] % 32) + 228 len mem[_4565] % 32]
                                        require ext_code.size(address(_4501))
                                        call address(_4501).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4351, 0, address(this.address), 128, mem[_4565], mem[_4565 + 196 len floor32(mem[_4565]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4436 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4564 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4634 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4634 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4634 + 36] = _4351
                                    mem[_4634 + 68] = 0
                                    mem[_4634 + 100] = address(_4436)
                                    mem[_4634 + 132] = 128
                                    mem[_4634 + 164] = mem[_4634]
                                    t = 0
                                    while t < mem[_4634]:
                                        mem[t + _4634 + 196] = mem[t + _4634 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4634] % 32:
                                        require ext_code.size(address(_4564))
                                        call address(_4564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4351, 0, address(_4436), 128, mem[_4634 + 164 len mem[_4634] + 32]
                                    else:
                                        mem[floor32(mem[_4634]) + _4634 + 196] = mem[floor32(mem[_4634]) + _4634 + -(mem[_4634] % 32) + 228 len mem[_4634] % 32]
                                        require ext_code.size(address(_4564))
                                        call address(_4564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4351, 0, address(_4436), 128, mem[_4634], mem[_4634 + 196 len floor32(mem[_4634]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                else:
                    require ('cd', 4).length >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356] = 0
                    idx = 0
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                        require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            _4352 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4503 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4567 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4567 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4567 + 36] = 0
                                    mem[_4567 + 68] = _4352
                                    mem[_4567 + 100] = this.address
                                    mem[_4567 + 132] = 128
                                    mem[_4567 + 164] = mem[_4567]
                                    s = 0
                                    while s < mem[_4567]:
                                        mem[s + _4567 + 196] = mem[s + _4567 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4567] % 32:
                                        require ext_code.size(address(_4503))
                                        call address(_4503).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4352, address(this.address), 128, mem[_4567 + 164 len mem[_4567] + 32]
                                    else:
                                        mem[floor32(mem[_4567]) + _4567 + 196] = mem[floor32(mem[_4567]) + _4567 + -(mem[_4567] % 32) + 228 len mem[_4567] % 32]
                                        require ext_code.size(address(_4503))
                                        call address(_4503).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4352, address(this.address), 128, mem[_4567], mem[_4567 + 196 len floor32(mem[_4567]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4438 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4566 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4638 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4638 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4638 + 36] = 0
                                    mem[_4638 + 68] = _4352
                                    mem[_4638 + 100] = address(_4438)
                                    mem[_4638 + 132] = 128
                                    mem[_4638 + 164] = mem[_4638]
                                    s = 0
                                    while s < mem[_4638]:
                                        mem[s + _4638 + 196] = mem[s + _4638 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4638] % 32:
                                        require ext_code.size(address(_4566))
                                        call address(_4566).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4352, address(_4438), 128, mem[_4638 + 164 len mem[_4638] + 32]
                                    else:
                                        mem[floor32(mem[_4638]) + _4638 + 196] = mem[floor32(mem[_4638]) + _4638 + -(mem[_4638] % 32) + 228 len mem[_4638] % 32]
                                        require ext_code.size(address(_4566))
                                        call address(_4566).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4352, address(_4438), 128, mem[_4638], mem[_4638 + 196 len floor32(mem[_4638]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4505 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4569 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4569 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4569 + 36] = _4352
                                    mem[_4569 + 68] = 0
                                    mem[_4569 + 100] = this.address
                                    mem[_4569 + 132] = 128
                                    mem[_4569 + 164] = mem[_4569]
                                    s = 0
                                    while s < mem[_4569]:
                                        mem[s + _4569 + 196] = mem[s + _4569 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4569] % 32:
                                        require ext_code.size(address(_4505))
                                        call address(_4505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4352, 0, address(this.address), 128, mem[_4569 + 164 len mem[_4569] + 32]
                                    else:
                                        mem[floor32(mem[_4569]) + _4569 + 196] = mem[floor32(mem[_4569]) + _4569 + -(mem[_4569] % 32) + 228 len mem[_4569] % 32]
                                        require ext_code.size(address(_4505))
                                        call address(_4505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4352, 0, address(this.address), 128, mem[_4569], mem[_4569 + 196 len floor32(mem[_4569]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4440 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4568 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4642 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4642 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4642 + 36] = _4352
                                    mem[_4642 + 68] = 0
                                    mem[_4642 + 100] = address(_4440)
                                    mem[_4642 + 132] = 128
                                    mem[_4642 + 164] = mem[_4642]
                                    s = 0
                                    while s < mem[_4642]:
                                        mem[s + _4642 + 196] = mem[s + _4642 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4642] % 32:
                                        require ext_code.size(address(_4568))
                                        call address(_4568).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4352, 0, address(_4440), 128, mem[_4642 + 164 len mem[_4642] + 32]
                                    else:
                                        mem[floor32(mem[_4642]) + _4642 + 196] = mem[floor32(mem[_4642]) + _4642 + -(mem[_4642] % 32) + 228 len mem[_4642] % 32]
                                        require ext_code.size(address(_4568))
                                        call address(_4568).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4352, 0, address(_4440), 128, mem[_4642], mem[_4642 + 196 len floor32(mem[_4642]) + 32]
                        else:
                            _4353 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4507 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4571 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4571 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4571 + 36] = 0
                                    mem[_4571 + 68] = _4353
                                    mem[_4571 + 100] = this.address
                                    mem[_4571 + 132] = 128
                                    mem[_4571 + 164] = mem[_4571]
                                    s = 0
                                    while s < mem[_4571]:
                                        mem[s + _4571 + 196] = mem[s + _4571 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4571] % 32:
                                        require ext_code.size(address(_4507))
                                        call address(_4507).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4353, address(this.address), 128, mem[_4571 + 164 len mem[_4571] + 32]
                                    else:
                                        mem[floor32(mem[_4571]) + _4571 + 196] = mem[floor32(mem[_4571]) + _4571 + -(mem[_4571] % 32) + 228 len mem[_4571] % 32]
                                        require ext_code.size(address(_4507))
                                        call address(_4507).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4353, address(this.address), 128, mem[_4571], mem[_4571 + 196 len floor32(mem[_4571]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4442 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4570 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4646 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4646 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4646 + 36] = 0
                                    mem[_4646 + 68] = _4353
                                    mem[_4646 + 100] = address(_4442)
                                    mem[_4646 + 132] = 128
                                    mem[_4646 + 164] = mem[_4646]
                                    s = 0
                                    while s < mem[_4646]:
                                        mem[s + _4646 + 196] = mem[s + _4646 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4646] % 32:
                                        require ext_code.size(address(_4570))
                                        call address(_4570).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4353, address(_4442), 128, mem[_4646 + 164 len mem[_4646] + 32]
                                    else:
                                        mem[floor32(mem[_4646]) + _4646 + 196] = mem[floor32(mem[_4646]) + _4646 + -(mem[_4646] % 32) + 228 len mem[_4646] % 32]
                                        require ext_code.size(address(_4570))
                                        call address(_4570).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4353, address(_4442), 128, mem[_4646], mem[_4646 + 196 len floor32(mem[_4646]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4509 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4573 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4573 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4573 + 36] = _4353
                                    mem[_4573 + 68] = 0
                                    mem[_4573 + 100] = this.address
                                    mem[_4573 + 132] = 128
                                    mem[_4573 + 164] = mem[_4573]
                                    s = 0
                                    while s < mem[_4573]:
                                        mem[s + _4573 + 196] = mem[s + _4573 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4573] % 32:
                                        require ext_code.size(address(_4509))
                                        call address(_4509).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4353, 0, address(this.address), 128, mem[_4573 + 164 len mem[_4573] + 32]
                                    else:
                                        mem[floor32(mem[_4573]) + _4573 + 196] = mem[floor32(mem[_4573]) + _4573 + -(mem[_4573] % 32) + 228 len mem[_4573] % 32]
                                        require ext_code.size(address(_4509))
                                        call address(_4509).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4353, 0, address(this.address), 128, mem[_4573], mem[_4573 + 196 len floor32(mem[_4573]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4444 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4572 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4650 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4650 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4650 + 36] = _4353
                                    mem[_4650 + 68] = 0
                                    mem[_4650 + 100] = address(_4444)
                                    mem[_4650 + 132] = 128
                                    mem[_4650 + 164] = mem[_4650]
                                    s = 0
                                    while s < mem[_4650]:
                                        mem[s + _4650 + 196] = mem[s + _4650 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4650] % 32:
                                        require ext_code.size(address(_4572))
                                        call address(_4572).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4353, 0, address(_4444), 128, mem[_4650 + 164 len mem[_4650] + 32]
                                    else:
                                        mem[floor32(mem[_4650]) + _4650 + 196] = mem[floor32(mem[_4650]) + _4650 + -(mem[_4650] % 32) + 228 len mem[_4650] % 32]
                                        require ext_code.size(address(_4572))
                                        call address(_4572).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4353, 0, address(_4444), 128, mem[_4650], mem[_4650 + 196 len floor32(mem[_4650]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = return_data.size
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not return_data.size:
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357] = 0
                    s = 0
                    while s < ('cd', 132).length - 1:
                        require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                        require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                        require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            _4354 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4511 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4575 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4575 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4575 + 36] = 0
                                    mem[_4575 + 68] = _4354
                                    mem[_4575 + 100] = this.address
                                    mem[_4575 + 132] = 128
                                    mem[_4575 + 164] = mem[_4575]
                                    idx = 0
                                    while idx < mem[_4575]:
                                        mem[idx + _4575 + 196] = mem[idx + _4575 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4575] % 32:
                                        require ext_code.size(address(_4511))
                                        call address(_4511).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4354, address(this.address), 128, mem[_4575 + 164 len mem[_4575] + 32]
                                    else:
                                        mem[floor32(mem[_4575]) + _4575 + 196] = mem[floor32(mem[_4575]) + _4575 + -(mem[_4575] % 32) + 228 len mem[_4575] % 32]
                                        require ext_code.size(address(_4511))
                                        call address(_4511).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4354, address(this.address), 128, mem[_4575], mem[_4575 + 196 len floor32(mem[_4575]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4446 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4574 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4654 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4654 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4654 + 36] = 0
                                    mem[_4654 + 68] = _4354
                                    mem[_4654 + 100] = address(_4446)
                                    mem[_4654 + 132] = 128
                                    mem[_4654 + 164] = mem[_4654]
                                    t = 0
                                    while t < mem[_4654]:
                                        mem[t + _4654 + 196] = mem[t + _4654 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4654] % 32:
                                        require ext_code.size(address(_4574))
                                        call address(_4574).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4354, address(_4446), 128, mem[_4654 + 164 len mem[_4654] + 32]
                                    else:
                                        mem[floor32(mem[_4654]) + _4654 + 196] = mem[floor32(mem[_4654]) + _4654 + -(mem[_4654] % 32) + 228 len mem[_4654] % 32]
                                        require ext_code.size(address(_4574))
                                        call address(_4574).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4354, address(_4446), 128, mem[_4654], mem[_4654 + 196 len floor32(mem[_4654]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4513 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4577 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4577 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4577 + 36] = _4354
                                    mem[_4577 + 68] = 0
                                    mem[_4577 + 100] = this.address
                                    mem[_4577 + 132] = 128
                                    mem[_4577 + 164] = mem[_4577]
                                    idx = 0
                                    while idx < mem[_4577]:
                                        mem[idx + _4577 + 196] = mem[idx + _4577 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4577] % 32:
                                        require ext_code.size(address(_4513))
                                        call address(_4513).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4354, 0, address(this.address), 128, mem[_4577 + 164 len mem[_4577] + 32]
                                    else:
                                        mem[floor32(mem[_4577]) + _4577 + 196] = mem[floor32(mem[_4577]) + _4577 + -(mem[_4577] % 32) + 228 len mem[_4577] % 32]
                                        require ext_code.size(address(_4513))
                                        call address(_4513).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4354, 0, address(this.address), 128, mem[_4577], mem[_4577 + 196 len floor32(mem[_4577]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4448 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4576 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4658 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4658 + 36] = _4354
                                    mem[_4658 + 68] = 0
                                    mem[_4658 + 100] = address(_4448)
                                    mem[_4658 + 132] = 128
                                    mem[_4658 + 164] = mem[_4658]
                                    t = 0
                                    while t < mem[_4658]:
                                        mem[t + _4658 + 196] = mem[t + _4658 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4658] % 32:
                                        require ext_code.size(address(_4576))
                                        call address(_4576).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4354, 0, address(_4448), 128, mem[_4658 + 164 len mem[_4658] + 32]
                                    else:
                                        mem[floor32(mem[_4658]) + _4658 + 196] = mem[floor32(mem[_4658]) + _4658 + -(mem[_4658] % 32) + 228 len mem[_4658] % 32]
                                        require ext_code.size(address(_4576))
                                        call address(_4576).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4354, 0, address(_4448), 128, mem[_4658], mem[_4658 + 196 len floor32(mem[_4658]) + 32]
                        else:
                            _4355 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4515 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4579 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4579 + 36] = 0
                                    mem[_4579 + 68] = _4355
                                    mem[_4579 + 100] = this.address
                                    mem[_4579 + 132] = 128
                                    mem[_4579 + 164] = mem[_4579]
                                    idx = 0
                                    while idx < mem[_4579]:
                                        mem[idx + _4579 + 196] = mem[idx + _4579 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4579] % 32:
                                        require ext_code.size(address(_4515))
                                        call address(_4515).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4355, address(this.address), 128, mem[_4579 + 164 len mem[_4579] + 32]
                                    else:
                                        mem[floor32(mem[_4579]) + _4579 + 196] = mem[floor32(mem[_4579]) + _4579 + -(mem[_4579] % 32) + 228 len mem[_4579] % 32]
                                        require ext_code.size(address(_4515))
                                        call address(_4515).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4355, address(this.address), 128, mem[_4579], mem[_4579 + 196 len floor32(mem[_4579]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4450 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4578 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4662 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4662 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4662 + 36] = 0
                                    mem[_4662 + 68] = _4355
                                    mem[_4662 + 100] = address(_4450)
                                    mem[_4662 + 132] = 128
                                    mem[_4662 + 164] = mem[_4662]
                                    t = 0
                                    while t < mem[_4662]:
                                        mem[t + _4662 + 196] = mem[t + _4662 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4662] % 32:
                                        require ext_code.size(address(_4578))
                                        call address(_4578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4355, address(_4450), 128, mem[_4662 + 164 len mem[_4662] + 32]
                                    else:
                                        mem[floor32(mem[_4662]) + _4662 + 196] = mem[floor32(mem[_4662]) + _4662 + -(mem[_4662] % 32) + 228 len mem[_4662] % 32]
                                        require ext_code.size(address(_4578))
                                        call address(_4578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4355, address(_4450), 128, mem[_4662], mem[_4662 + 196 len floor32(mem[_4662]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4517 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4581 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4581 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4581 + 36] = _4355
                                    mem[_4581 + 68] = 0
                                    mem[_4581 + 100] = this.address
                                    mem[_4581 + 132] = 128
                                    mem[_4581 + 164] = mem[_4581]
                                    idx = 0
                                    while idx < mem[_4581]:
                                        mem[idx + _4581 + 196] = mem[idx + _4581 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4581] % 32:
                                        require ext_code.size(address(_4517))
                                        call address(_4517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4355, 0, address(this.address), 128, mem[_4581 + 164 len mem[_4581] + 32]
                                    else:
                                        mem[floor32(mem[_4581]) + _4581 + 196] = mem[floor32(mem[_4581]) + _4581 + -(mem[_4581] % 32) + 228 len mem[_4581] % 32]
                                        require ext_code.size(address(_4517))
                                        call address(_4517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4355, 0, address(this.address), 128, mem[_4581], mem[_4581 + 196 len floor32(mem[_4581]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4452 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4580 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4666 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4666 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4666 + 36] = _4355
                                    mem[_4666 + 68] = 0
                                    mem[_4666 + 100] = address(_4452)
                                    mem[_4666 + 132] = 128
                                    mem[_4666 + 164] = mem[_4666]
                                    t = 0
                                    while t < mem[_4666]:
                                        mem[t + _4666 + 196] = mem[t + _4666 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4666] % 32:
                                        require ext_code.size(address(_4580))
                                        call address(_4580).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4355, 0, address(_4452), 128, mem[_4666 + 164 len mem[_4666] + 32]
                                    else:
                                        mem[floor32(mem[_4666]) + _4666 + 196] = mem[floor32(mem[_4666]) + _4666 + -(mem[_4666] % 32) + 228 len mem[_4666] % 32]
                                        require ext_code.size(address(_4580))
                                        call address(_4580).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4355, 0, address(_4452), 128, mem[_4666], mem[_4666 + 196 len floor32(mem[_4666]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                else:
                    require return_data.size >= 32
                    if not mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357] = 0
                    idx = 0
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            _4356 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4519 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4583 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4583 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4583 + 36] = 0
                                    mem[_4583 + 68] = _4356
                                    mem[_4583 + 100] = this.address
                                    mem[_4583 + 132] = 128
                                    mem[_4583 + 164] = mem[_4583]
                                    s = 0
                                    while s < mem[_4583]:
                                        mem[s + _4583 + 196] = mem[s + _4583 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4583] % 32:
                                        require ext_code.size(address(_4519))
                                        call address(_4519).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4356, address(this.address), 128, mem[_4583 + 164 len mem[_4583] + 32]
                                    else:
                                        mem[floor32(mem[_4583]) + _4583 + 196] = mem[floor32(mem[_4583]) + _4583 + -(mem[_4583] % 32) + 228 len mem[_4583] % 32]
                                        require ext_code.size(address(_4519))
                                        call address(_4519).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4356, address(this.address), 128, mem[_4583], mem[_4583 + 196 len floor32(mem[_4583]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4454 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4582 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4670 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4670 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4670 + 36] = 0
                                    mem[_4670 + 68] = _4356
                                    mem[_4670 + 100] = address(_4454)
                                    mem[_4670 + 132] = 128
                                    mem[_4670 + 164] = mem[_4670]
                                    s = 0
                                    while s < mem[_4670]:
                                        mem[s + _4670 + 196] = mem[s + _4670 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4670] % 32:
                                        require ext_code.size(address(_4582))
                                        call address(_4582).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4356, address(_4454), 128, mem[_4670 + 164 len mem[_4670] + 32]
                                    else:
                                        mem[floor32(mem[_4670]) + _4670 + 196] = mem[floor32(mem[_4670]) + _4670 + -(mem[_4670] % 32) + 228 len mem[_4670] % 32]
                                        require ext_code.size(address(_4582))
                                        call address(_4582).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4356, address(_4454), 128, mem[_4670], mem[_4670 + 196 len floor32(mem[_4670]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4521 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4585 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4585 + 36] = _4356
                                    mem[_4585 + 68] = 0
                                    mem[_4585 + 100] = this.address
                                    mem[_4585 + 132] = 128
                                    mem[_4585 + 164] = mem[_4585]
                                    s = 0
                                    while s < mem[_4585]:
                                        mem[s + _4585 + 196] = mem[s + _4585 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4585] % 32:
                                        require ext_code.size(address(_4521))
                                        call address(_4521).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4356, 0, address(this.address), 128, mem[_4585 + 164 len mem[_4585] + 32]
                                    else:
                                        mem[floor32(mem[_4585]) + _4585 + 196] = mem[floor32(mem[_4585]) + _4585 + -(mem[_4585] % 32) + 228 len mem[_4585] % 32]
                                        require ext_code.size(address(_4521))
                                        call address(_4521).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4356, 0, address(this.address), 128, mem[_4585], mem[_4585 + 196 len floor32(mem[_4585]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4456 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4584 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4674 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4674 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4674 + 36] = _4356
                                    mem[_4674 + 68] = 0
                                    mem[_4674 + 100] = address(_4456)
                                    mem[_4674 + 132] = 128
                                    mem[_4674 + 164] = mem[_4674]
                                    s = 0
                                    while s < mem[_4674]:
                                        mem[s + _4674 + 196] = mem[s + _4674 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4674] % 32:
                                        require ext_code.size(address(_4584))
                                        call address(_4584).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4356, 0, address(_4456), 128, mem[_4674 + 164 len mem[_4674] + 32]
                                    else:
                                        mem[floor32(mem[_4674]) + _4674 + 196] = mem[floor32(mem[_4674]) + _4674 + -(mem[_4674] % 32) + 228 len mem[_4674] % 32]
                                        require ext_code.size(address(_4584))
                                        call address(_4584).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4356, 0, address(_4456), 128, mem[_4674], mem[_4674 + 196 len floor32(mem[_4674]) + 32]
                        else:
                            _4357 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4523 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4587 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4587 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4587 + 36] = 0
                                    mem[_4587 + 68] = _4357
                                    mem[_4587 + 100] = this.address
                                    mem[_4587 + 132] = 128
                                    mem[_4587 + 164] = mem[_4587]
                                    s = 0
                                    while s < mem[_4587]:
                                        mem[s + _4587 + 196] = mem[s + _4587 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4587] % 32:
                                        require ext_code.size(address(_4523))
                                        call address(_4523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4357, address(this.address), 128, mem[_4587 + 164 len mem[_4587] + 32]
                                    else:
                                        mem[floor32(mem[_4587]) + _4587 + 196] = mem[floor32(mem[_4587]) + _4587 + -(mem[_4587] % 32) + 228 len mem[_4587] % 32]
                                        require ext_code.size(address(_4523))
                                        call address(_4523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4357, address(this.address), 128, mem[_4587], mem[_4587 + 196 len floor32(mem[_4587]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4458 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4586 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4678 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4678 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4678 + 36] = 0
                                    mem[_4678 + 68] = _4357
                                    mem[_4678 + 100] = address(_4458)
                                    mem[_4678 + 132] = 128
                                    mem[_4678 + 164] = mem[_4678]
                                    s = 0
                                    while s < mem[_4678]:
                                        mem[s + _4678 + 196] = mem[s + _4678 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4678] % 32:
                                        require ext_code.size(address(_4586))
                                        call address(_4586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4357, address(_4458), 128, mem[_4678 + 164 len mem[_4678] + 32]
                                    else:
                                        mem[floor32(mem[_4678]) + _4678 + 196] = mem[floor32(mem[_4678]) + _4678 + -(mem[_4678] % 32) + 228 len mem[_4678] % 32]
                                        require ext_code.size(address(_4586))
                                        call address(_4586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4357, address(_4458), 128, mem[_4678], mem[_4678 + 196 len floor32(mem[_4678]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4525 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4589 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4589 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4589 + 36] = _4357
                                    mem[_4589 + 68] = 0
                                    mem[_4589 + 100] = this.address
                                    mem[_4589 + 132] = 128
                                    mem[_4589 + 164] = mem[_4589]
                                    s = 0
                                    while s < mem[_4589]:
                                        mem[s + _4589 + 196] = mem[s + _4589 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4589] % 32:
                                        require ext_code.size(address(_4525))
                                        call address(_4525).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4357, 0, address(this.address), 128, mem[_4589 + 164 len mem[_4589] + 32]
                                    else:
                                        mem[floor32(mem[_4589]) + _4589 + 196] = mem[floor32(mem[_4589]) + _4589 + -(mem[_4589] % 32) + 228 len mem[_4589] % 32]
                                        require ext_code.size(address(_4525))
                                        call address(_4525).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4357, 0, address(this.address), 128, mem[_4589], mem[_4589 + 196 len floor32(mem[_4589]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4460 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4588 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4682 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4682 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4682 + 36] = _4357
                                    mem[_4682 + 68] = 0
                                    mem[_4682 + 100] = address(_4460)
                                    mem[_4682 + 132] = 128
                                    mem[_4682 + 164] = mem[_4682]
                                    s = 0
                                    while s < mem[_4682]:
                                        mem[s + _4682 + 196] = mem[s + _4682 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4682] % 32:
                                        require ext_code.size(address(_4588))
                                        call address(_4588).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4357, 0, address(_4460), 128, mem[_4682 + 164 len mem[_4682] + 32]
                                    else:
                                        mem[floor32(mem[_4682]) + _4682 + 196] = mem[floor32(mem[_4682]) + _4682 + -(mem[_4682] % 32) + 228 len mem[_4682] % 32]
                                        require ext_code.size(address(_4588))
                                        call address(_4588).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4357, 0, address(_4460), 128, mem[_4682], mem[_4682 + 196 len floor32(mem[_4682]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
        else:
            mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
            require 0 < ('cd', 132).length
            mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = s
            idx = 0
            while idx < ('cd', 132).length - 1:
                require idx < ('cd', 4).length
                require idx < ('cd', 132).length
                _2316 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                require idx + 1 < ('cd', 132).length
                _2323 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]:
                    if address(_2316) == address(_2316):
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                else:
                    if address(_2323) == address(_2316):
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] != -cd[36] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]):
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) - (cd[36] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
            if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] < cd[100]:
                revert with 0, 'J'
            require 0 < ('cd', 132).length
            require 0 < ('cd', 4).length
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 228] = address(('cd', 4)[0])
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 260] = s
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] = 68
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 224 len 4] = unknown_0xa9059cbb(?????)
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292 len 64] = 0, address(('cd', 4)[0]), Mask(224, 32, s) >> 32
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 384 len 4] = Mask(32, 64, s) >> 64
            call address(('cd', 132)[0]) with:
                 gas gas_remaining wei
                args s, Mask(224, 32, address(('cd', 4)[0]), Mask(224, 32, s) >> 32) >> 32, mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 356 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not ('cd', 4).length:
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356] = 0
                    s = 0
                    while s < ('cd', 132).length - 1:
                        require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                        require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                        require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            _4358 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4527 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4591 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4591 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4591 + 36] = 0
                                    mem[_4591 + 68] = _4358
                                    mem[_4591 + 100] = this.address
                                    mem[_4591 + 132] = 128
                                    mem[_4591 + 164] = mem[_4591]
                                    idx = 0
                                    while idx < mem[_4591]:
                                        mem[idx + _4591 + 196] = mem[idx + _4591 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4591] % 32:
                                        require ext_code.size(address(_4527))
                                        call address(_4527).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4358, address(this.address), 128, mem[_4591 + 164 len mem[_4591] + 32]
                                    else:
                                        mem[floor32(mem[_4591]) + _4591 + 196] = mem[floor32(mem[_4591]) + _4591 + -(mem[_4591] % 32) + 228 len mem[_4591] % 32]
                                        require ext_code.size(address(_4527))
                                        call address(_4527).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4358, address(this.address), 128, mem[_4591], mem[_4591 + 196 len floor32(mem[_4591]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4462 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4590 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4686 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4686 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4686 + 36] = 0
                                    mem[_4686 + 68] = _4358
                                    mem[_4686 + 100] = address(_4462)
                                    mem[_4686 + 132] = 128
                                    mem[_4686 + 164] = mem[_4686]
                                    t = 0
                                    while t < mem[_4686]:
                                        mem[t + _4686 + 196] = mem[t + _4686 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4686] % 32:
                                        require ext_code.size(address(_4590))
                                        call address(_4590).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4358, address(_4462), 128, mem[_4686 + 164 len mem[_4686] + 32]
                                    else:
                                        mem[floor32(mem[_4686]) + _4686 + 196] = mem[floor32(mem[_4686]) + _4686 + -(mem[_4686] % 32) + 228 len mem[_4686] % 32]
                                        require ext_code.size(address(_4590))
                                        call address(_4590).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4358, address(_4462), 128, mem[_4686], mem[_4686 + 196 len floor32(mem[_4686]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4529 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4593 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4593 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4593 + 36] = _4358
                                    mem[_4593 + 68] = 0
                                    mem[_4593 + 100] = this.address
                                    mem[_4593 + 132] = 128
                                    mem[_4593 + 164] = mem[_4593]
                                    idx = 0
                                    while idx < mem[_4593]:
                                        mem[idx + _4593 + 196] = mem[idx + _4593 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4593] % 32:
                                        require ext_code.size(address(_4529))
                                        call address(_4529).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4358, 0, address(this.address), 128, mem[_4593 + 164 len mem[_4593] + 32]
                                    else:
                                        mem[floor32(mem[_4593]) + _4593 + 196] = mem[floor32(mem[_4593]) + _4593 + -(mem[_4593] % 32) + 228 len mem[_4593] % 32]
                                        require ext_code.size(address(_4529))
                                        call address(_4529).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4358, 0, address(this.address), 128, mem[_4593], mem[_4593 + 196 len floor32(mem[_4593]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4464 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4592 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4690 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4690 + 36] = _4358
                                    mem[_4690 + 68] = 0
                                    mem[_4690 + 100] = address(_4464)
                                    mem[_4690 + 132] = 128
                                    mem[_4690 + 164] = mem[_4690]
                                    t = 0
                                    while t < mem[_4690]:
                                        mem[t + _4690 + 196] = mem[t + _4690 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4690] % 32:
                                        require ext_code.size(address(_4592))
                                        call address(_4592).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4358, 0, address(_4464), 128, mem[_4690 + 164 len mem[_4690] + 32]
                                    else:
                                        mem[floor32(mem[_4690]) + _4690 + 196] = mem[floor32(mem[_4690]) + _4690 + -(mem[_4690] % 32) + 228 len mem[_4690] % 32]
                                        require ext_code.size(address(_4592))
                                        call address(_4592).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4358, 0, address(_4464), 128, mem[_4690], mem[_4690 + 196 len floor32(mem[_4690]) + 32]
                        else:
                            _4359 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4531 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4595 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4595 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4595 + 36] = 0
                                    mem[_4595 + 68] = _4359
                                    mem[_4595 + 100] = this.address
                                    mem[_4595 + 132] = 128
                                    mem[_4595 + 164] = mem[_4595]
                                    idx = 0
                                    while idx < mem[_4595]:
                                        mem[idx + _4595 + 196] = mem[idx + _4595 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4595] % 32:
                                        require ext_code.size(address(_4531))
                                        call address(_4531).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4359, address(this.address), 128, mem[_4595 + 164 len mem[_4595] + 32]
                                    else:
                                        mem[floor32(mem[_4595]) + _4595 + 196] = mem[floor32(mem[_4595]) + _4595 + -(mem[_4595] % 32) + 228 len mem[_4595] % 32]
                                        require ext_code.size(address(_4531))
                                        call address(_4531).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4359, address(this.address), 128, mem[_4595], mem[_4595 + 196 len floor32(mem[_4595]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4466 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4594 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4694 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4694 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4694 + 36] = 0
                                    mem[_4694 + 68] = _4359
                                    mem[_4694 + 100] = address(_4466)
                                    mem[_4694 + 132] = 128
                                    mem[_4694 + 164] = mem[_4694]
                                    t = 0
                                    while t < mem[_4694]:
                                        mem[t + _4694 + 196] = mem[t + _4694 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4694] % 32:
                                        require ext_code.size(address(_4594))
                                        call address(_4594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4359, address(_4466), 128, mem[_4694 + 164 len mem[_4694] + 32]
                                    else:
                                        mem[floor32(mem[_4694]) + _4694 + 196] = mem[floor32(mem[_4694]) + _4694 + -(mem[_4694] % 32) + 228 len mem[_4694] % 32]
                                        require ext_code.size(address(_4594))
                                        call address(_4594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4359, address(_4466), 128, mem[_4694], mem[_4694 + 196 len floor32(mem[_4694]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4533 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4597 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4597 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4597 + 36] = _4359
                                    mem[_4597 + 68] = 0
                                    mem[_4597 + 100] = this.address
                                    mem[_4597 + 132] = 128
                                    mem[_4597 + 164] = mem[_4597]
                                    idx = 0
                                    while idx < mem[_4597]:
                                        mem[idx + _4597 + 196] = mem[idx + _4597 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4597] % 32:
                                        require ext_code.size(address(_4533))
                                        call address(_4533).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4359, 0, address(this.address), 128, mem[_4597 + 164 len mem[_4597] + 32]
                                    else:
                                        mem[floor32(mem[_4597]) + _4597 + 196] = mem[floor32(mem[_4597]) + _4597 + -(mem[_4597] % 32) + 228 len mem[_4597] % 32]
                                        require ext_code.size(address(_4533))
                                        call address(_4533).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4359, 0, address(this.address), 128, mem[_4597], mem[_4597 + 196 len floor32(mem[_4597]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4468 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4596 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4698 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4698 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4698 + 36] = _4359
                                    mem[_4698 + 68] = 0
                                    mem[_4698 + 100] = address(_4468)
                                    mem[_4698 + 132] = 128
                                    mem[_4698 + 164] = mem[_4698]
                                    t = 0
                                    while t < mem[_4698]:
                                        mem[t + _4698 + 196] = mem[t + _4698 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4698] % 32:
                                        require ext_code.size(address(_4596))
                                        call address(_4596).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4359, 0, address(_4468), 128, mem[_4698 + 164 len mem[_4698] + 32]
                                    else:
                                        mem[floor32(mem[_4698]) + _4698 + 196] = mem[floor32(mem[_4698]) + _4698 + -(mem[_4698] % 32) + 228 len mem[_4698] % 32]
                                        require ext_code.size(address(_4596))
                                        call address(_4596).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4359, 0, address(_4468), 128, mem[_4698], mem[_4698 + 196 len floor32(mem[_4698]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                else:
                    require ('cd', 4).length >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + 356] = 0
                    idx = 0
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                        require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                            _4360 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4535 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4599 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4599 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4599 + 36] = 0
                                    mem[_4599 + 68] = _4360
                                    mem[_4599 + 100] = this.address
                                    mem[_4599 + 132] = 128
                                    mem[_4599 + 164] = mem[_4599]
                                    s = 0
                                    while s < mem[_4599]:
                                        mem[s + _4599 + 196] = mem[s + _4599 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4599] % 32:
                                        require ext_code.size(address(_4535))
                                        call address(_4535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4360, address(this.address), 128, mem[_4599 + 164 len mem[_4599] + 32]
                                    else:
                                        mem[floor32(mem[_4599]) + _4599 + 196] = mem[floor32(mem[_4599]) + _4599 + -(mem[_4599] % 32) + 228 len mem[_4599] % 32]
                                        require ext_code.size(address(_4535))
                                        call address(_4535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4360, address(this.address), 128, mem[_4599], mem[_4599 + 196 len floor32(mem[_4599]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4470 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4598 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4702 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4702 + 36] = 0
                                    mem[_4702 + 68] = _4360
                                    mem[_4702 + 100] = address(_4470)
                                    mem[_4702 + 132] = 128
                                    mem[_4702 + 164] = mem[_4702]
                                    s = 0
                                    while s < mem[_4702]:
                                        mem[s + _4702 + 196] = mem[s + _4702 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4702] % 32:
                                        require ext_code.size(address(_4598))
                                        call address(_4598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4360, address(_4470), 128, mem[_4702 + 164 len mem[_4702] + 32]
                                    else:
                                        mem[floor32(mem[_4702]) + _4702 + 196] = mem[floor32(mem[_4702]) + _4702 + -(mem[_4702] % 32) + 228 len mem[_4702] % 32]
                                        require ext_code.size(address(_4598))
                                        call address(_4598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4360, address(_4470), 128, mem[_4702], mem[_4702 + 196 len floor32(mem[_4702]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4537 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4601 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4601 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4601 + 36] = _4360
                                    mem[_4601 + 68] = 0
                                    mem[_4601 + 100] = this.address
                                    mem[_4601 + 132] = 128
                                    mem[_4601 + 164] = mem[_4601]
                                    s = 0
                                    while s < mem[_4601]:
                                        mem[s + _4601 + 196] = mem[s + _4601 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4601] % 32:
                                        require ext_code.size(address(_4537))
                                        call address(_4537).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4360, 0, address(this.address), 128, mem[_4601 + 164 len mem[_4601] + 32]
                                    else:
                                        mem[floor32(mem[_4601]) + _4601 + 196] = mem[floor32(mem[_4601]) + _4601 + -(mem[_4601] % 32) + 228 len mem[_4601] % 32]
                                        require ext_code.size(address(_4537))
                                        call address(_4537).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4360, 0, address(this.address), 128, mem[_4601], mem[_4601 + 196 len floor32(mem[_4601]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4472 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4600 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4706 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4706 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4706 + 36] = _4360
                                    mem[_4706 + 68] = 0
                                    mem[_4706 + 100] = address(_4472)
                                    mem[_4706 + 132] = 128
                                    mem[_4706 + 164] = mem[_4706]
                                    s = 0
                                    while s < mem[_4706]:
                                        mem[s + _4706 + 196] = mem[s + _4706 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4706] % 32:
                                        require ext_code.size(address(_4600))
                                        call address(_4600).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4360, 0, address(_4472), 128, mem[_4706 + 164 len mem[_4706] + 32]
                                    else:
                                        mem[floor32(mem[_4706]) + _4706 + 196] = mem[floor32(mem[_4706]) + _4706 + -(mem[_4706] % 32) + 228 len mem[_4706] % 32]
                                        require ext_code.size(address(_4600))
                                        call address(_4600).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4360, 0, address(_4472), 128, mem[_4706], mem[_4706 + 196 len floor32(mem[_4706]) + 32]
                        else:
                            _4361 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 368 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4539 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4603 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4603 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4603 + 36] = 0
                                    mem[_4603 + 68] = _4361
                                    mem[_4603 + 100] = this.address
                                    mem[_4603 + 132] = 128
                                    mem[_4603 + 164] = mem[_4603]
                                    s = 0
                                    while s < mem[_4603]:
                                        mem[s + _4603 + 196] = mem[s + _4603 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4603] % 32:
                                        require ext_code.size(address(_4539))
                                        call address(_4539).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4361, address(this.address), 128, mem[_4603 + 164 len mem[_4603] + 32]
                                    else:
                                        mem[floor32(mem[_4603]) + _4603 + 196] = mem[floor32(mem[_4603]) + _4603 + -(mem[_4603] % 32) + 228 len mem[_4603] % 32]
                                        require ext_code.size(address(_4539))
                                        call address(_4539).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4361, address(this.address), 128, mem[_4603], mem[_4603 + 196 len floor32(mem[_4603]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4474 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4602 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4710 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4710 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4710 + 36] = 0
                                    mem[_4710 + 68] = _4361
                                    mem[_4710 + 100] = address(_4474)
                                    mem[_4710 + 132] = 128
                                    mem[_4710 + 164] = mem[_4710]
                                    s = 0
                                    while s < mem[_4710]:
                                        mem[s + _4710 + 196] = mem[s + _4710 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4710] % 32:
                                        require ext_code.size(address(_4602))
                                        call address(_4602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4361, address(_4474), 128, mem[_4710 + 164 len mem[_4710] + 32]
                                    else:
                                        mem[floor32(mem[_4710]) + _4710 + 196] = mem[floor32(mem[_4710]) + _4710 + -(mem[_4710] % 32) + 228 len mem[_4710] % 32]
                                        require ext_code.size(address(_4602))
                                        call address(_4602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4361, address(_4474), 128, mem[_4710], mem[_4710 + 196 len floor32(mem[_4710]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + 324] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4541 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4605 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4605 + 36] = _4361
                                    mem[_4605 + 68] = 0
                                    mem[_4605 + 100] = this.address
                                    mem[_4605 + 132] = 128
                                    mem[_4605 + 164] = mem[_4605]
                                    s = 0
                                    while s < mem[_4605]:
                                        mem[s + _4605 + 196] = mem[s + _4605 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4605] % 32:
                                        require ext_code.size(address(_4541))
                                        call address(_4541).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4361, 0, address(this.address), 128, mem[_4605 + 164 len mem[_4605] + 32]
                                    else:
                                        mem[floor32(mem[_4605]) + _4605 + 196] = mem[floor32(mem[_4605]) + _4605 + -(mem[_4605] % 32) + 228 len mem[_4605] % 32]
                                        require ext_code.size(address(_4541))
                                        call address(_4541).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4361, 0, address(this.address), 128, mem[_4605], mem[_4605 + 196 len floor32(mem[_4605]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4476 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292]
                                    _4604 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]
                                    _4714 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4714 + 36] = _4361
                                    mem[_4714 + 68] = 0
                                    mem[_4714 + 100] = address(_4476)
                                    mem[_4714 + 132] = 128
                                    mem[_4714 + 164] = mem[_4714]
                                    s = 0
                                    while s < mem[_4714]:
                                        mem[s + _4714 + 196] = mem[s + _4714 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4714] % 32:
                                        require ext_code.size(address(_4604))
                                        call address(_4604).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4361, 0, address(_4476), 128, mem[_4714 + 164 len mem[_4714] + 32]
                                    else:
                                        mem[floor32(mem[_4714]) + _4714 + 196] = mem[floor32(mem[_4714]) + _4714 + -(mem[_4714] % 32) + 228 len mem[_4714] % 32]
                                        require ext_code.size(address(_4604))
                                        call address(_4604).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4361, 0, address(_4476), 128, mem[_4714], mem[_4714 + 196 len floor32(mem[_4714]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 292] = return_data.size
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not return_data.size:
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357] = 0
                    s = 0
                    while s < ('cd', 132).length - 1:
                        require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                        require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                        require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            _4362 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4543 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4607 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4607 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4607 + 36] = 0
                                    mem[_4607 + 68] = _4362
                                    mem[_4607 + 100] = this.address
                                    mem[_4607 + 132] = 128
                                    mem[_4607 + 164] = mem[_4607]
                                    idx = 0
                                    while idx < mem[_4607]:
                                        mem[idx + _4607 + 196] = mem[idx + _4607 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4607] % 32:
                                        require ext_code.size(address(_4543))
                                        call address(_4543).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4362, address(this.address), 128, mem[_4607 + 164 len mem[_4607] + 32]
                                    else:
                                        mem[floor32(mem[_4607]) + _4607 + 196] = mem[floor32(mem[_4607]) + _4607 + -(mem[_4607] % 32) + 228 len mem[_4607] % 32]
                                        require ext_code.size(address(_4543))
                                        call address(_4543).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4362, address(this.address), 128, mem[_4607], mem[_4607 + 196 len floor32(mem[_4607]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4478 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4606 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4718 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4718 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4718 + 36] = 0
                                    mem[_4718 + 68] = _4362
                                    mem[_4718 + 100] = address(_4478)
                                    mem[_4718 + 132] = 128
                                    mem[_4718 + 164] = mem[_4718]
                                    t = 0
                                    while t < mem[_4718]:
                                        mem[t + _4718 + 196] = mem[t + _4718 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4718] % 32:
                                        require ext_code.size(address(_4606))
                                        call address(_4606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4362, address(_4478), 128, mem[_4718 + 164 len mem[_4718] + 32]
                                    else:
                                        mem[floor32(mem[_4718]) + _4718 + 196] = mem[floor32(mem[_4718]) + _4718 + -(mem[_4718] % 32) + 228 len mem[_4718] % 32]
                                        require ext_code.size(address(_4606))
                                        call address(_4606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4362, address(_4478), 128, mem[_4718], mem[_4718 + 196 len floor32(mem[_4718]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4545 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4609 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4609 + 36] = _4362
                                    mem[_4609 + 68] = 0
                                    mem[_4609 + 100] = this.address
                                    mem[_4609 + 132] = 128
                                    mem[_4609 + 164] = mem[_4609]
                                    idx = 0
                                    while idx < mem[_4609]:
                                        mem[idx + _4609 + 196] = mem[idx + _4609 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4609] % 32:
                                        require ext_code.size(address(_4545))
                                        call address(_4545).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4362, 0, address(this.address), 128, mem[_4609 + 164 len mem[_4609] + 32]
                                    else:
                                        mem[floor32(mem[_4609]) + _4609 + 196] = mem[floor32(mem[_4609]) + _4609 + -(mem[_4609] % 32) + 228 len mem[_4609] % 32]
                                        require ext_code.size(address(_4545))
                                        call address(_4545).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4362, 0, address(this.address), 128, mem[_4609], mem[_4609 + 196 len floor32(mem[_4609]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4480 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4608 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4722 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4722 + 36] = _4362
                                    mem[_4722 + 68] = 0
                                    mem[_4722 + 100] = address(_4480)
                                    mem[_4722 + 132] = 128
                                    mem[_4722 + 164] = mem[_4722]
                                    t = 0
                                    while t < mem[_4722]:
                                        mem[t + _4722 + 196] = mem[t + _4722 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4722] % 32:
                                        require ext_code.size(address(_4608))
                                        call address(_4608).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4362, 0, address(_4480), 128, mem[_4722 + 164 len mem[_4722] + 32]
                                    else:
                                        mem[floor32(mem[_4722]) + _4722 + 196] = mem[floor32(mem[_4722]) + _4722 + -(mem[_4722] % 32) + 228 len mem[_4722] % 32]
                                        require ext_code.size(address(_4608))
                                        call address(_4608).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4362, 0, address(_4480), 128, mem[_4722], mem[_4722 + 196 len floor32(mem[_4722]) + 32]
                        else:
                            _4363 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4547 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4611 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4611 + 36] = 0
                                    mem[_4611 + 68] = _4363
                                    mem[_4611 + 100] = this.address
                                    mem[_4611 + 132] = 128
                                    mem[_4611 + 164] = mem[_4611]
                                    idx = 0
                                    while idx < mem[_4611]:
                                        mem[idx + _4611 + 196] = mem[idx + _4611 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4611] % 32:
                                        require ext_code.size(address(_4547))
                                        call address(_4547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4363, address(this.address), 128, mem[_4611 + 164 len mem[_4611] + 32]
                                    else:
                                        mem[floor32(mem[_4611]) + _4611 + 196] = mem[floor32(mem[_4611]) + _4611 + -(mem[_4611] % 32) + 228 len mem[_4611] % 32]
                                        require ext_code.size(address(_4547))
                                        call address(_4547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4363, address(this.address), 128, mem[_4611], mem[_4611 + 196 len floor32(mem[_4611]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4482 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4610 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4726 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4726 + 36] = 0
                                    mem[_4726 + 68] = _4363
                                    mem[_4726 + 100] = address(_4482)
                                    mem[_4726 + 132] = 128
                                    mem[_4726 + 164] = mem[_4726]
                                    t = 0
                                    while t < mem[_4726]:
                                        mem[t + _4726 + 196] = mem[t + _4726 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4726] % 32:
                                        require ext_code.size(address(_4610))
                                        call address(_4610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4363, address(_4482), 128, mem[_4726 + 164 len mem[_4726] + 32]
                                    else:
                                        mem[floor32(mem[_4726]) + _4726 + 196] = mem[floor32(mem[_4726]) + _4726 + -(mem[_4726] % 32) + 228 len mem[_4726] % 32]
                                        require ext_code.size(address(_4610))
                                        call address(_4610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4363, address(_4482), 128, mem[_4726], mem[_4726 + 196 len floor32(mem[_4726]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4549 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4613 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4613 + 36] = _4363
                                    mem[_4613 + 68] = 0
                                    mem[_4613 + 100] = this.address
                                    mem[_4613 + 132] = 128
                                    mem[_4613 + 164] = mem[_4613]
                                    idx = 0
                                    while idx < mem[_4613]:
                                        mem[idx + _4613 + 196] = mem[idx + _4613 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4613] % 32:
                                        require ext_code.size(address(_4549))
                                        call address(_4549).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4363, 0, address(this.address), 128, mem[_4613 + 164 len mem[_4613] + 32]
                                    else:
                                        mem[floor32(mem[_4613]) + _4613 + 196] = mem[floor32(mem[_4613]) + _4613 + -(mem[_4613] % 32) + 228 len mem[_4613] % 32]
                                        require ext_code.size(address(_4549))
                                        call address(_4549).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4363, 0, address(this.address), 128, mem[_4613], mem[_4613 + 196 len floor32(mem[_4613]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4484 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4612 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4730 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4730 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + 36] = _4363
                                    mem[_4730 + 68] = 0
                                    mem[_4730 + 100] = address(_4484)
                                    mem[_4730 + 132] = 128
                                    mem[_4730 + 164] = mem[_4730]
                                    t = 0
                                    while t < mem[_4730]:
                                        mem[t + _4730 + 196] = mem[t + _4730 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4730] % 32:
                                        require ext_code.size(address(_4612))
                                        call address(_4612).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4363, 0, address(_4484), 128, mem[_4730 + 164 len mem[_4730] + 32]
                                    else:
                                        mem[floor32(mem[_4730]) + _4730 + 196] = mem[floor32(mem[_4730]) + _4730 + -(mem[_4730] % 32) + 228 len mem[_4730] % 32]
                                        require ext_code.size(address(_4612))
                                        call address(_4612).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4363, 0, address(_4484), 128, mem[_4730], mem[_4730 + 196 len floor32(mem[_4730]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                else:
                    require return_data.size >= 32
                    if not mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + 324]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 357] = 0
                    idx = 0
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                            _4364 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4551 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4615 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4615 + 36] = 0
                                    mem[_4615 + 68] = _4364
                                    mem[_4615 + 100] = this.address
                                    mem[_4615 + 132] = 128
                                    mem[_4615 + 164] = mem[_4615]
                                    s = 0
                                    while s < mem[_4615]:
                                        mem[s + _4615 + 196] = mem[s + _4615 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4615] % 32:
                                        require ext_code.size(address(_4551))
                                        call address(_4551).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4364, address(this.address), 128, mem[_4615 + 164 len mem[_4615] + 32]
                                    else:
                                        mem[floor32(mem[_4615]) + _4615 + 196] = mem[floor32(mem[_4615]) + _4615 + -(mem[_4615] % 32) + 228 len mem[_4615] % 32]
                                        require ext_code.size(address(_4551))
                                        call address(_4551).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4364, address(this.address), 128, mem[_4615], mem[_4615 + 196 len floor32(mem[_4615]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4486 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4614 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4734 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4734 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4734 + 36] = 0
                                    mem[_4734 + 68] = _4364
                                    mem[_4734 + 100] = address(_4486)
                                    mem[_4734 + 132] = 128
                                    mem[_4734 + 164] = mem[_4734]
                                    s = 0
                                    while s < mem[_4734]:
                                        mem[s + _4734 + 196] = mem[s + _4734 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4734] % 32:
                                        require ext_code.size(address(_4614))
                                        call address(_4614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4364, address(_4486), 128, mem[_4734 + 164 len mem[_4734] + 32]
                                    else:
                                        mem[floor32(mem[_4734]) + _4734 + 196] = mem[floor32(mem[_4734]) + _4734 + -(mem[_4734] % 32) + 228 len mem[_4734] % 32]
                                        require ext_code.size(address(_4614))
                                        call address(_4614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4364, address(_4486), 128, mem[_4734], mem[_4734 + 196 len floor32(mem[_4734]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4553 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4617 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4617 + 36] = _4364
                                    mem[_4617 + 68] = 0
                                    mem[_4617 + 100] = this.address
                                    mem[_4617 + 132] = 128
                                    mem[_4617 + 164] = mem[_4617]
                                    s = 0
                                    while s < mem[_4617]:
                                        mem[s + _4617 + 196] = mem[s + _4617 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4617] % 32:
                                        require ext_code.size(address(_4553))
                                        call address(_4553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4364, 0, address(this.address), 128, mem[_4617 + 164 len mem[_4617] + 32]
                                    else:
                                        mem[floor32(mem[_4617]) + _4617 + 196] = mem[floor32(mem[_4617]) + _4617 + -(mem[_4617] % 32) + 228 len mem[_4617] % 32]
                                        require ext_code.size(address(_4553))
                                        call address(_4553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4364, 0, address(this.address), 128, mem[_4617], mem[_4617 + 196 len floor32(mem[_4617]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4488 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4616 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4738 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4738 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4738 + 36] = _4364
                                    mem[_4738 + 68] = 0
                                    mem[_4738 + 100] = address(_4488)
                                    mem[_4738 + 132] = 128
                                    mem[_4738 + 164] = mem[_4738]
                                    s = 0
                                    while s < mem[_4738]:
                                        mem[s + _4738 + 196] = mem[s + _4738 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4738] % 32:
                                        require ext_code.size(address(_4616))
                                        call address(_4616).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4364, 0, address(_4488), 128, mem[_4738 + 164 len mem[_4738] + 32]
                                    else:
                                        mem[floor32(mem[_4738]) + _4738 + 196] = mem[floor32(mem[_4738]) + _4738 + -(mem[_4738] % 32) + 228 len mem[_4738] % 32]
                                        require ext_code.size(address(_4616))
                                        call address(_4616).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4364, 0, address(_4488), 128, mem[_4738], mem[_4738 + 196 len floor32(mem[_4738]) + 32]
                        else:
                            _4365 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 369 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4555 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4619 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4619 + 36] = 0
                                    mem[_4619 + 68] = _4365
                                    mem[_4619 + 100] = this.address
                                    mem[_4619 + 132] = 128
                                    mem[_4619 + 164] = mem[_4619]
                                    s = 0
                                    while s < mem[_4619]:
                                        mem[s + _4619 + 196] = mem[s + _4619 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4619] % 32:
                                        require ext_code.size(address(_4555))
                                        call address(_4555).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4365, address(this.address), 128, mem[_4619 + 164 len mem[_4619] + 32]
                                    else:
                                        mem[floor32(mem[_4619]) + _4619 + 196] = mem[floor32(mem[_4619]) + _4619 + -(mem[_4619] % 32) + 228 len mem[_4619] % 32]
                                        require ext_code.size(address(_4555))
                                        call address(_4555).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4365, address(this.address), 128, mem[_4619], mem[_4619 + 196 len floor32(mem[_4619]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4490 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4618 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4742 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4742 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4742 + 36] = 0
                                    mem[_4742 + 68] = _4365
                                    mem[_4742 + 100] = address(_4490)
                                    mem[_4742 + 132] = 128
                                    mem[_4742 + 164] = mem[_4742]
                                    s = 0
                                    while s < mem[_4742]:
                                        mem[s + _4742 + 196] = mem[s + _4742 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4742] % 32:
                                        require ext_code.size(address(_4618))
                                        call address(_4618).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4365, address(_4490), 128, mem[_4742 + 164 len mem[_4742] + 32]
                                    else:
                                        mem[floor32(mem[_4742]) + _4742 + 196] = mem[floor32(mem[_4742]) + _4742 + -(mem[_4742] % 32) + 228 len mem[_4742] % 32]
                                        require ext_code.size(address(_4618))
                                        call address(_4618).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4365, address(_4490), 128, mem[_4742], mem[_4742 + 196 len floor32(mem[_4742]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + ceil32(return_data.size) + 325] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4557 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4621 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4621 + 36] = _4365
                                    mem[_4621 + 68] = 0
                                    mem[_4621 + 100] = this.address
                                    mem[_4621 + 132] = 128
                                    mem[_4621 + 164] = mem[_4621]
                                    s = 0
                                    while s < mem[_4621]:
                                        mem[s + _4621 + 196] = mem[s + _4621 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4621] % 32:
                                        require ext_code.size(address(_4557))
                                        call address(_4557).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4365, 0, address(this.address), 128, mem[_4621 + 164 len mem[_4621] + 32]
                                    else:
                                        mem[floor32(mem[_4621]) + _4621 + 196] = mem[floor32(mem[_4621]) + _4621 + -(mem[_4621] % 32) + 228 len mem[_4621] % 32]
                                        require ext_code.size(address(_4557))
                                        call address(_4557).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4365, 0, address(this.address), 128, mem[_4621], mem[_4621 + 196 len floor32(mem[_4621]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4492 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 293]
                                    _4620 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + ceil32(return_data.size) + 325]
                                    _4746 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4746 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4746 + 36] = _4365
                                    mem[_4746 + 68] = 0
                                    mem[_4746 + 100] = address(_4492)
                                    mem[_4746 + 132] = 128
                                    mem[_4746 + 164] = mem[_4746]
                                    s = 0
                                    while s < mem[_4746]:
                                        mem[s + _4746 + 196] = mem[s + _4746 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4746] % 32:
                                        require ext_code.size(address(_4620))
                                        call address(_4620).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4365, 0, address(_4492), 128, mem[_4746 + 164 len mem[_4746] + 32]
                                    else:
                                        mem[floor32(mem[_4746]) + _4746 + 196] = mem[floor32(mem[_4746]) + _4746 + -(mem[_4746] % 32) + 228 len mem[_4746] % 32]
                                        require ext_code.size(address(_4620))
                                        call address(_4620).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4365, 0, address(_4492), 128, mem[_4746], mem[_4746 + 196 len floor32(mem[_4746]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
}

function sub_b79f8207(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 32, 19, 0xfe4f776e61626c653a20464f5242494444454e32000000000000000000000000
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = cd[68]
    while uint8(idx) < ('cd', 132).length - 1:
        require uint8(idx) < ('cd', 4).length
        require ext_code.size(address(cd[((32 * uint8(idx)) + cd[4] + 36)]))
        staticcall address(cd[((32 * uint8(idx)) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require uint8(idx + 1) < ('cd', 132).length
        require uint8(idx) < ('cd', 132).length
        if address(cd[((32 * uint8(idx)) + cd[132] + 36)]) < address(cd[((32 * uint8(idx + 1)) + cd[132] + 36)]):
            mem[96] = Mask(112, 0, ext_call.return_data[0])
            mem[128] = Mask(112, 0, ext_call.return_data[32])
            emit 0xf9038999: ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if uint8(idx) < ('cd', 36).length:
                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * s) - (cd[((32 * uint8(idx)) + cd[36] + 36)] * s):
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * s * Mask(112, 0, ext_call.return_data[32])) - (cd[((32 * uint8(idx)) + cd[36] + 36)] * s * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * s) - (cd[((32 * uint8(idx)) + cd[36] + 36)] * s)
                    continue 
        else:
            mem[96] = Mask(112, 0, ext_call.return_data[32])
            mem[128] = Mask(112, 0, ext_call.return_data[0])
            emit 0xf9038999: ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if uint8(idx) < ('cd', 36).length:
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * s) - (cd[((32 * uint8(idx)) + cd[36] + 36)] * s):
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * s * Mask(112, 0, ext_call.return_data[0])) - (cd[((32 * uint8(idx)) + cd[36] + 36)] * s * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * s) - (cd[((32 * uint8(idx)) + cd[36] + 36)] * s)
                    continue 
        revert
    if s >= cd[100]:
        mem[96] = ('cd', 4).length
        mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 132).length
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160] = ('cd', 36).length
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        require ('cd', 132).length <= test266151307()
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = ('cd', 132).length
        mem[64] = (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
        if not ('cd', 132).length:
            require 0 < ('cd', 132).length
            mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = s
            idx = 0
            while idx < ('cd', 132).length - 1:
                require idx < ('cd', 4).length
                require idx < ('cd', 132).length
                _2347 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                require idx + 1 < ('cd', 132).length
                _2354 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]:
                    if address(_2347) == address(_2347):
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]):
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]):
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                else:
                    if address(_2354) == address(_2347):
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]):
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]):
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] < cd[100]:
                revert with 0, 'J'
            require 0 < ('cd', 132).length
            require 0 < ('cd', 4).length
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 260] = address(('cd', 4)[0])
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 292] = s
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 68
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256 len 4] = unknown_0xa9059cbb(?????)
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324 len 64] = 0, address(('cd', 4)[0]), Mask(224, 32, s) >> 32
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len 4] = Mask(32, 64, s) >> 64
            call address(('cd', 132)[0]) with:
                 gas gas_remaining wei
                args s, Mask(224, 32, address(('cd', 4)[0]), Mask(224, 32, s) >> 32) >> 32, mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not ('cd', 4).length:
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388] = 0
                    idx = 0
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                        require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                            _4400 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4545 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4609 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4609 + 36] = 0
                                    mem[_4609 + 68] = _4400
                                    mem[_4609 + 100] = this.address
                                    mem[_4609 + 132] = 128
                                    mem[_4609 + 164] = mem[_4609]
                                    s = 0
                                    while s < mem[_4609]:
                                        mem[s + _4609 + 196] = mem[s + _4609 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4609] % 32:
                                        require ext_code.size(address(_4545))
                                        call address(_4545).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4400, address(this.address), 128, mem[_4609 + 164 len mem[_4609] + 32]
                                    else:
                                        mem[floor32(mem[_4609]) + _4609 + 196] = mem[floor32(mem[_4609]) + _4609 + -(mem[_4609] % 32) + 228 len mem[_4609] % 32]
                                        require ext_code.size(address(_4545))
                                        call address(_4545).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4400, address(this.address), 128, mem[_4609], mem[_4609 + 196 len floor32(mem[_4609]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4480 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4608 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4672 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4672 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4672 + 36] = 0
                                    mem[_4672 + 68] = _4400
                                    mem[_4672 + 100] = address(_4480)
                                    mem[_4672 + 132] = 128
                                    mem[_4672 + 164] = mem[_4672]
                                    s = 0
                                    while s < mem[_4672]:
                                        mem[s + _4672 + 196] = mem[s + _4672 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4672] % 32:
                                        require ext_code.size(address(_4608))
                                        call address(_4608).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4400, address(_4480), 128, mem[_4672 + 164 len mem[_4672] + 32]
                                    else:
                                        mem[floor32(mem[_4672]) + _4672 + 196] = mem[floor32(mem[_4672]) + _4672 + -(mem[_4672] % 32) + 228 len mem[_4672] % 32]
                                        require ext_code.size(address(_4608))
                                        call address(_4608).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4400, address(_4480), 128, mem[_4672], mem[_4672 + 196 len floor32(mem[_4672]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4547 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4611 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4611 + 36] = _4400
                                    mem[_4611 + 68] = 0
                                    mem[_4611 + 100] = this.address
                                    mem[_4611 + 132] = 128
                                    mem[_4611 + 164] = mem[_4611]
                                    s = 0
                                    while s < mem[_4611]:
                                        mem[s + _4611 + 196] = mem[s + _4611 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4611] % 32:
                                        require ext_code.size(address(_4547))
                                        call address(_4547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4400, 0, address(this.address), 128, mem[_4611 + 164 len mem[_4611] + 32]
                                    else:
                                        mem[floor32(mem[_4611]) + _4611 + 196] = mem[floor32(mem[_4611]) + _4611 + -(mem[_4611] % 32) + 228 len mem[_4611] % 32]
                                        require ext_code.size(address(_4547))
                                        call address(_4547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4400, 0, address(this.address), 128, mem[_4611], mem[_4611 + 196 len floor32(mem[_4611]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4482 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4610 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4676 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4676 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4676 + 36] = _4400
                                    mem[_4676 + 68] = 0
                                    mem[_4676 + 100] = address(_4482)
                                    mem[_4676 + 132] = 128
                                    mem[_4676 + 164] = mem[_4676]
                                    s = 0
                                    while s < mem[_4676]:
                                        mem[s + _4676 + 196] = mem[s + _4676 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4676] % 32:
                                        require ext_code.size(address(_4610))
                                        call address(_4610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4400, 0, address(_4482), 128, mem[_4676 + 164 len mem[_4676] + 32]
                                    else:
                                        mem[floor32(mem[_4676]) + _4676 + 196] = mem[floor32(mem[_4676]) + _4676 + -(mem[_4676] % 32) + 228 len mem[_4676] % 32]
                                        require ext_code.size(address(_4610))
                                        call address(_4610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4400, 0, address(_4482), 128, mem[_4676], mem[_4676 + 196 len floor32(mem[_4676]) + 32]
                        else:
                            _4401 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4549 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4613 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4613 + 36] = 0
                                    mem[_4613 + 68] = _4401
                                    mem[_4613 + 100] = this.address
                                    mem[_4613 + 132] = 128
                                    mem[_4613 + 164] = mem[_4613]
                                    s = 0
                                    while s < mem[_4613]:
                                        mem[s + _4613 + 196] = mem[s + _4613 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4613] % 32:
                                        require ext_code.size(address(_4549))
                                        call address(_4549).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4401, address(this.address), 128, mem[_4613 + 164 len mem[_4613] + 32]
                                    else:
                                        mem[floor32(mem[_4613]) + _4613 + 196] = mem[floor32(mem[_4613]) + _4613 + -(mem[_4613] % 32) + 228 len mem[_4613] % 32]
                                        require ext_code.size(address(_4549))
                                        call address(_4549).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4401, address(this.address), 128, mem[_4613], mem[_4613 + 196 len floor32(mem[_4613]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4484 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4612 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4680 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4680 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4680 + 36] = 0
                                    mem[_4680 + 68] = _4401
                                    mem[_4680 + 100] = address(_4484)
                                    mem[_4680 + 132] = 128
                                    mem[_4680 + 164] = mem[_4680]
                                    s = 0
                                    while s < mem[_4680]:
                                        mem[s + _4680 + 196] = mem[s + _4680 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4680] % 32:
                                        require ext_code.size(address(_4612))
                                        call address(_4612).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4401, address(_4484), 128, mem[_4680 + 164 len mem[_4680] + 32]
                                    else:
                                        mem[floor32(mem[_4680]) + _4680 + 196] = mem[floor32(mem[_4680]) + _4680 + -(mem[_4680] % 32) + 228 len mem[_4680] % 32]
                                        require ext_code.size(address(_4612))
                                        call address(_4612).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4401, address(_4484), 128, mem[_4680], mem[_4680 + 196 len floor32(mem[_4680]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4551 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4615 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4615 + 36] = _4401
                                    mem[_4615 + 68] = 0
                                    mem[_4615 + 100] = this.address
                                    mem[_4615 + 132] = 128
                                    mem[_4615 + 164] = mem[_4615]
                                    s = 0
                                    while s < mem[_4615]:
                                        mem[s + _4615 + 196] = mem[s + _4615 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4615] % 32:
                                        require ext_code.size(address(_4551))
                                        call address(_4551).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4401, 0, address(this.address), 128, mem[_4615 + 164 len mem[_4615] + 32]
                                    else:
                                        mem[floor32(mem[_4615]) + _4615 + 196] = mem[floor32(mem[_4615]) + _4615 + -(mem[_4615] % 32) + 228 len mem[_4615] % 32]
                                        require ext_code.size(address(_4551))
                                        call address(_4551).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4401, 0, address(this.address), 128, mem[_4615], mem[_4615 + 196 len floor32(mem[_4615]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4486 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4614 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4684 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4684 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4684 + 36] = _4401
                                    mem[_4684 + 68] = 0
                                    mem[_4684 + 100] = address(_4486)
                                    mem[_4684 + 132] = 128
                                    mem[_4684 + 164] = mem[_4684]
                                    s = 0
                                    while s < mem[_4684]:
                                        mem[s + _4684 + 196] = mem[s + _4684 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4684] % 32:
                                        require ext_code.size(address(_4614))
                                        call address(_4614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4401, 0, address(_4486), 128, mem[_4684 + 164 len mem[_4684] + 32]
                                    else:
                                        mem[floor32(mem[_4684]) + _4684 + 196] = mem[floor32(mem[_4684]) + _4684 + -(mem[_4684] % 32) + 228 len mem[_4684] % 32]
                                        require ext_code.size(address(_4614))
                                        call address(_4614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4401, 0, address(_4486), 128, mem[_4684], mem[_4684 + 196 len floor32(mem[_4684]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    require ('cd', 4).length >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388] = 0
                    s = 0
                    while s < ('cd', 132).length - 1:
                        require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                        require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                        require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                            _4402 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4553 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4617 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4617 + 36] = 0
                                    mem[_4617 + 68] = _4402
                                    mem[_4617 + 100] = this.address
                                    mem[_4617 + 132] = 128
                                    mem[_4617 + 164] = mem[_4617]
                                    t = 0
                                    while t < mem[_4617]:
                                        mem[t + _4617 + 196] = mem[t + _4617 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4617] % 32:
                                        require ext_code.size(address(_4553))
                                        call address(_4553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4402, address(this.address), 128, mem[_4617 + 164 len mem[_4617] + 32]
                                    else:
                                        mem[floor32(mem[_4617]) + _4617 + 196] = mem[floor32(mem[_4617]) + _4617 + -(mem[_4617] % 32) + 228 len mem[_4617] % 32]
                                        require ext_code.size(address(_4553))
                                        call address(_4553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4402, address(this.address), 128, mem[_4617], mem[_4617 + 196 len floor32(mem[_4617]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4488 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4616 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4688 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4688 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4688 + 36] = 0
                                    mem[_4688 + 68] = _4402
                                    mem[_4688 + 100] = address(_4488)
                                    mem[_4688 + 132] = 128
                                    mem[_4688 + 164] = mem[_4688]
                                    idx = 0
                                    while idx < mem[_4688]:
                                        mem[idx + _4688 + 196] = mem[idx + _4688 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4688] % 32:
                                        require ext_code.size(address(_4616))
                                        call address(_4616).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4402, address(_4488), 128, mem[_4688 + 164 len mem[_4688] + 32]
                                    else:
                                        mem[floor32(mem[_4688]) + _4688 + 196] = mem[floor32(mem[_4688]) + _4688 + -(mem[_4688] % 32) + 228 len mem[_4688] % 32]
                                        require ext_code.size(address(_4616))
                                        call address(_4616).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4402, address(_4488), 128, mem[_4688], mem[_4688 + 196 len floor32(mem[_4688]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4555 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4619 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4619 + 36] = _4402
                                    mem[_4619 + 68] = 0
                                    mem[_4619 + 100] = this.address
                                    mem[_4619 + 132] = 128
                                    mem[_4619 + 164] = mem[_4619]
                                    t = 0
                                    while t < mem[_4619]:
                                        mem[t + _4619 + 196] = mem[t + _4619 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4619] % 32:
                                        require ext_code.size(address(_4555))
                                        call address(_4555).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4402, 0, address(this.address), 128, mem[_4619 + 164 len mem[_4619] + 32]
                                    else:
                                        mem[floor32(mem[_4619]) + _4619 + 196] = mem[floor32(mem[_4619]) + _4619 + -(mem[_4619] % 32) + 228 len mem[_4619] % 32]
                                        require ext_code.size(address(_4555))
                                        call address(_4555).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4402, 0, address(this.address), 128, mem[_4619], mem[_4619 + 196 len floor32(mem[_4619]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4490 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4618 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4692 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4692 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4692 + 36] = _4402
                                    mem[_4692 + 68] = 0
                                    mem[_4692 + 100] = address(_4490)
                                    mem[_4692 + 132] = 128
                                    mem[_4692 + 164] = mem[_4692]
                                    idx = 0
                                    while idx < mem[_4692]:
                                        mem[idx + _4692 + 196] = mem[idx + _4692 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4692] % 32:
                                        require ext_code.size(address(_4618))
                                        call address(_4618).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4402, 0, address(_4490), 128, mem[_4692 + 164 len mem[_4692] + 32]
                                    else:
                                        mem[floor32(mem[_4692]) + _4692 + 196] = mem[floor32(mem[_4692]) + _4692 + -(mem[_4692] % 32) + 228 len mem[_4692] % 32]
                                        require ext_code.size(address(_4618))
                                        call address(_4618).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4402, 0, address(_4490), 128, mem[_4692], mem[_4692 + 196 len floor32(mem[_4692]) + 32]
                        else:
                            _4403 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4557 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4621 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4621 + 36] = 0
                                    mem[_4621 + 68] = _4403
                                    mem[_4621 + 100] = this.address
                                    mem[_4621 + 132] = 128
                                    mem[_4621 + 164] = mem[_4621]
                                    t = 0
                                    while t < mem[_4621]:
                                        mem[t + _4621 + 196] = mem[t + _4621 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4621] % 32:
                                        require ext_code.size(address(_4557))
                                        call address(_4557).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4403, address(this.address), 128, mem[_4621 + 164 len mem[_4621] + 32]
                                    else:
                                        mem[floor32(mem[_4621]) + _4621 + 196] = mem[floor32(mem[_4621]) + _4621 + -(mem[_4621] % 32) + 228 len mem[_4621] % 32]
                                        require ext_code.size(address(_4557))
                                        call address(_4557).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4403, address(this.address), 128, mem[_4621], mem[_4621 + 196 len floor32(mem[_4621]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4492 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4620 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4696 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4696 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4696 + 36] = 0
                                    mem[_4696 + 68] = _4403
                                    mem[_4696 + 100] = address(_4492)
                                    mem[_4696 + 132] = 128
                                    mem[_4696 + 164] = mem[_4696]
                                    idx = 0
                                    while idx < mem[_4696]:
                                        mem[idx + _4696 + 196] = mem[idx + _4696 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4696] % 32:
                                        require ext_code.size(address(_4620))
                                        call address(_4620).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4403, address(_4492), 128, mem[_4696 + 164 len mem[_4696] + 32]
                                    else:
                                        mem[floor32(mem[_4696]) + _4696 + 196] = mem[floor32(mem[_4696]) + _4696 + -(mem[_4696] % 32) + 228 len mem[_4696] % 32]
                                        require ext_code.size(address(_4620))
                                        call address(_4620).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4403, address(_4492), 128, mem[_4696], mem[_4696 + 196 len floor32(mem[_4696]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4559 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4623 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4623 + 36] = _4403
                                    mem[_4623 + 68] = 0
                                    mem[_4623 + 100] = this.address
                                    mem[_4623 + 132] = 128
                                    mem[_4623 + 164] = mem[_4623]
                                    t = 0
                                    while t < mem[_4623]:
                                        mem[t + _4623 + 196] = mem[t + _4623 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4623] % 32:
                                        require ext_code.size(address(_4559))
                                        call address(_4559).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4403, 0, address(this.address), 128, mem[_4623 + 164 len mem[_4623] + 32]
                                    else:
                                        mem[floor32(mem[_4623]) + _4623 + 196] = mem[floor32(mem[_4623]) + _4623 + -(mem[_4623] % 32) + 228 len mem[_4623] % 32]
                                        require ext_code.size(address(_4559))
                                        call address(_4559).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4403, 0, address(this.address), 128, mem[_4623], mem[_4623 + 196 len floor32(mem[_4623]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4494 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4622 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4700 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4700 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4700 + 36] = _4403
                                    mem[_4700 + 68] = 0
                                    mem[_4700 + 100] = address(_4494)
                                    mem[_4700 + 132] = 128
                                    mem[_4700 + 164] = mem[_4700]
                                    idx = 0
                                    while idx < mem[_4700]:
                                        mem[idx + _4700 + 196] = mem[idx + _4700 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4700] % 32:
                                        require ext_code.size(address(_4622))
                                        call address(_4622).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4403, 0, address(_4494), 128, mem[_4700 + 164 len mem[_4700] + 32]
                                    else:
                                        mem[floor32(mem[_4700]) + _4700 + 196] = mem[floor32(mem[_4700]) + _4700 + -(mem[_4700] % 32) + 228 len mem[_4700] % 32]
                                        require ext_code.size(address(_4622))
                                        call address(_4622).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4403, 0, address(_4494), 128, mem[_4700], mem[_4700 + 196 len floor32(mem[_4700]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
            else:
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324] = return_data.size
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not return_data.size:
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 0
                    idx = 0
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                        require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            _4404 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4561 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4625 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4625 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4625 + 36] = 0
                                    mem[_4625 + 68] = _4404
                                    mem[_4625 + 100] = this.address
                                    mem[_4625 + 132] = 128
                                    mem[_4625 + 164] = mem[_4625]
                                    s = 0
                                    while s < mem[_4625]:
                                        mem[s + _4625 + 196] = mem[s + _4625 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4625] % 32:
                                        require ext_code.size(address(_4561))
                                        call address(_4561).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4404, address(this.address), 128, mem[_4625 + 164 len mem[_4625] + 32]
                                    else:
                                        mem[floor32(mem[_4625]) + _4625 + 196] = mem[floor32(mem[_4625]) + _4625 + -(mem[_4625] % 32) + 228 len mem[_4625] % 32]
                                        require ext_code.size(address(_4561))
                                        call address(_4561).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4404, address(this.address), 128, mem[_4625], mem[_4625 + 196 len floor32(mem[_4625]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4496 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4624 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4704 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4704 + 36] = 0
                                    mem[_4704 + 68] = _4404
                                    mem[_4704 + 100] = address(_4496)
                                    mem[_4704 + 132] = 128
                                    mem[_4704 + 164] = mem[_4704]
                                    s = 0
                                    while s < mem[_4704]:
                                        mem[s + _4704 + 196] = mem[s + _4704 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4704] % 32:
                                        require ext_code.size(address(_4624))
                                        call address(_4624).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4404, address(_4496), 128, mem[_4704 + 164 len mem[_4704] + 32]
                                    else:
                                        mem[floor32(mem[_4704]) + _4704 + 196] = mem[floor32(mem[_4704]) + _4704 + -(mem[_4704] % 32) + 228 len mem[_4704] % 32]
                                        require ext_code.size(address(_4624))
                                        call address(_4624).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4404, address(_4496), 128, mem[_4704], mem[_4704 + 196 len floor32(mem[_4704]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4563 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4627 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4627 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4627 + 36] = _4404
                                    mem[_4627 + 68] = 0
                                    mem[_4627 + 100] = this.address
                                    mem[_4627 + 132] = 128
                                    mem[_4627 + 164] = mem[_4627]
                                    s = 0
                                    while s < mem[_4627]:
                                        mem[s + _4627 + 196] = mem[s + _4627 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4627] % 32:
                                        require ext_code.size(address(_4563))
                                        call address(_4563).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4404, 0, address(this.address), 128, mem[_4627 + 164 len mem[_4627] + 32]
                                    else:
                                        mem[floor32(mem[_4627]) + _4627 + 196] = mem[floor32(mem[_4627]) + _4627 + -(mem[_4627] % 32) + 228 len mem[_4627] % 32]
                                        require ext_code.size(address(_4563))
                                        call address(_4563).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4404, 0, address(this.address), 128, mem[_4627], mem[_4627 + 196 len floor32(mem[_4627]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4498 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4626 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4708 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4708 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4708 + 36] = _4404
                                    mem[_4708 + 68] = 0
                                    mem[_4708 + 100] = address(_4498)
                                    mem[_4708 + 132] = 128
                                    mem[_4708 + 164] = mem[_4708]
                                    s = 0
                                    while s < mem[_4708]:
                                        mem[s + _4708 + 196] = mem[s + _4708 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4708] % 32:
                                        require ext_code.size(address(_4626))
                                        call address(_4626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4404, 0, address(_4498), 128, mem[_4708 + 164 len mem[_4708] + 32]
                                    else:
                                        mem[floor32(mem[_4708]) + _4708 + 196] = mem[floor32(mem[_4708]) + _4708 + -(mem[_4708] % 32) + 228 len mem[_4708] % 32]
                                        require ext_code.size(address(_4626))
                                        call address(_4626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4404, 0, address(_4498), 128, mem[_4708], mem[_4708 + 196 len floor32(mem[_4708]) + 32]
                        else:
                            _4405 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4565 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4629 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4629 + 36] = 0
                                    mem[_4629 + 68] = _4405
                                    mem[_4629 + 100] = this.address
                                    mem[_4629 + 132] = 128
                                    mem[_4629 + 164] = mem[_4629]
                                    s = 0
                                    while s < mem[_4629]:
                                        mem[s + _4629 + 196] = mem[s + _4629 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4629] % 32:
                                        require ext_code.size(address(_4565))
                                        call address(_4565).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4405, address(this.address), 128, mem[_4629 + 164 len mem[_4629] + 32]
                                    else:
                                        mem[floor32(mem[_4629]) + _4629 + 196] = mem[floor32(mem[_4629]) + _4629 + -(mem[_4629] % 32) + 228 len mem[_4629] % 32]
                                        require ext_code.size(address(_4565))
                                        call address(_4565).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4405, address(this.address), 128, mem[_4629], mem[_4629 + 196 len floor32(mem[_4629]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4500 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4628 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4712 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4712 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4712 + 36] = 0
                                    mem[_4712 + 68] = _4405
                                    mem[_4712 + 100] = address(_4500)
                                    mem[_4712 + 132] = 128
                                    mem[_4712 + 164] = mem[_4712]
                                    s = 0
                                    while s < mem[_4712]:
                                        mem[s + _4712 + 196] = mem[s + _4712 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4712] % 32:
                                        require ext_code.size(address(_4628))
                                        call address(_4628).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4405, address(_4500), 128, mem[_4712 + 164 len mem[_4712] + 32]
                                    else:
                                        mem[floor32(mem[_4712]) + _4712 + 196] = mem[floor32(mem[_4712]) + _4712 + -(mem[_4712] % 32) + 228 len mem[_4712] % 32]
                                        require ext_code.size(address(_4628))
                                        call address(_4628).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4405, address(_4500), 128, mem[_4712], mem[_4712 + 196 len floor32(mem[_4712]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4567 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4631 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4631 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4631 + 36] = _4405
                                    mem[_4631 + 68] = 0
                                    mem[_4631 + 100] = this.address
                                    mem[_4631 + 132] = 128
                                    mem[_4631 + 164] = mem[_4631]
                                    s = 0
                                    while s < mem[_4631]:
                                        mem[s + _4631 + 196] = mem[s + _4631 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4631] % 32:
                                        require ext_code.size(address(_4567))
                                        call address(_4567).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4405, 0, address(this.address), 128, mem[_4631 + 164 len mem[_4631] + 32]
                                    else:
                                        mem[floor32(mem[_4631]) + _4631 + 196] = mem[floor32(mem[_4631]) + _4631 + -(mem[_4631] % 32) + 228 len mem[_4631] % 32]
                                        require ext_code.size(address(_4567))
                                        call address(_4567).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4405, 0, address(this.address), 128, mem[_4631], mem[_4631 + 196 len floor32(mem[_4631]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4502 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4630 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4716 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4716 + 36] = _4405
                                    mem[_4716 + 68] = 0
                                    mem[_4716 + 100] = address(_4502)
                                    mem[_4716 + 132] = 128
                                    mem[_4716 + 164] = mem[_4716]
                                    s = 0
                                    while s < mem[_4716]:
                                        mem[s + _4716 + 196] = mem[s + _4716 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4716] % 32:
                                        require ext_code.size(address(_4630))
                                        call address(_4630).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4405, 0, address(_4502), 128, mem[_4716 + 164 len mem[_4716] + 32]
                                    else:
                                        mem[floor32(mem[_4716]) + _4716 + 196] = mem[floor32(mem[_4716]) + _4716 + -(mem[_4716] % 32) + 228 len mem[_4716] % 32]
                                        require ext_code.size(address(_4630))
                                        call address(_4630).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4405, 0, address(_4502), 128, mem[_4716], mem[_4716 + 196 len floor32(mem[_4716]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    if not mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 0
                    s = 0
                    while s < ('cd', 132).length - 1:
                        require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                        require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                        require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            _4406 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4569 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4633 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4633 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4633 + 36] = 0
                                    mem[_4633 + 68] = _4406
                                    mem[_4633 + 100] = this.address
                                    mem[_4633 + 132] = 128
                                    mem[_4633 + 164] = mem[_4633]
                                    t = 0
                                    while t < mem[_4633]:
                                        mem[t + _4633 + 196] = mem[t + _4633 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4633] % 32:
                                        require ext_code.size(address(_4569))
                                        call address(_4569).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4406, address(this.address), 128, mem[_4633 + 164 len mem[_4633] + 32]
                                    else:
                                        mem[floor32(mem[_4633]) + _4633 + 196] = mem[floor32(mem[_4633]) + _4633 + -(mem[_4633] % 32) + 228 len mem[_4633] % 32]
                                        require ext_code.size(address(_4569))
                                        call address(_4569).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4406, address(this.address), 128, mem[_4633], mem[_4633 + 196 len floor32(mem[_4633]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4504 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4632 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4720 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4720 + 36] = 0
                                    mem[_4720 + 68] = _4406
                                    mem[_4720 + 100] = address(_4504)
                                    mem[_4720 + 132] = 128
                                    mem[_4720 + 164] = mem[_4720]
                                    idx = 0
                                    while idx < mem[_4720]:
                                        mem[idx + _4720 + 196] = mem[idx + _4720 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4720] % 32:
                                        require ext_code.size(address(_4632))
                                        call address(_4632).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4406, address(_4504), 128, mem[_4720 + 164 len mem[_4720] + 32]
                                    else:
                                        mem[floor32(mem[_4720]) + _4720 + 196] = mem[floor32(mem[_4720]) + _4720 + -(mem[_4720] % 32) + 228 len mem[_4720] % 32]
                                        require ext_code.size(address(_4632))
                                        call address(_4632).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4406, address(_4504), 128, mem[_4720], mem[_4720 + 196 len floor32(mem[_4720]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4571 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4635 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4635 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4635 + 36] = _4406
                                    mem[_4635 + 68] = 0
                                    mem[_4635 + 100] = this.address
                                    mem[_4635 + 132] = 128
                                    mem[_4635 + 164] = mem[_4635]
                                    t = 0
                                    while t < mem[_4635]:
                                        mem[t + _4635 + 196] = mem[t + _4635 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4635] % 32:
                                        require ext_code.size(address(_4571))
                                        call address(_4571).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4406, 0, address(this.address), 128, mem[_4635 + 164 len mem[_4635] + 32]
                                    else:
                                        mem[floor32(mem[_4635]) + _4635 + 196] = mem[floor32(mem[_4635]) + _4635 + -(mem[_4635] % 32) + 228 len mem[_4635] % 32]
                                        require ext_code.size(address(_4571))
                                        call address(_4571).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4406, 0, address(this.address), 128, mem[_4635], mem[_4635 + 196 len floor32(mem[_4635]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4506 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4634 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4724 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4724 + 36] = _4406
                                    mem[_4724 + 68] = 0
                                    mem[_4724 + 100] = address(_4506)
                                    mem[_4724 + 132] = 128
                                    mem[_4724 + 164] = mem[_4724]
                                    idx = 0
                                    while idx < mem[_4724]:
                                        mem[idx + _4724 + 196] = mem[idx + _4724 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4724] % 32:
                                        require ext_code.size(address(_4634))
                                        call address(_4634).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4406, 0, address(_4506), 128, mem[_4724 + 164 len mem[_4724] + 32]
                                    else:
                                        mem[floor32(mem[_4724]) + _4724 + 196] = mem[floor32(mem[_4724]) + _4724 + -(mem[_4724] % 32) + 228 len mem[_4724] % 32]
                                        require ext_code.size(address(_4634))
                                        call address(_4634).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4406, 0, address(_4506), 128, mem[_4724], mem[_4724 + 196 len floor32(mem[_4724]) + 32]
                        else:
                            _4407 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4573 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4637 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4637 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4637 + 36] = 0
                                    mem[_4637 + 68] = _4407
                                    mem[_4637 + 100] = this.address
                                    mem[_4637 + 132] = 128
                                    mem[_4637 + 164] = mem[_4637]
                                    t = 0
                                    while t < mem[_4637]:
                                        mem[t + _4637 + 196] = mem[t + _4637 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4637] % 32:
                                        require ext_code.size(address(_4573))
                                        call address(_4573).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4407, address(this.address), 128, mem[_4637 + 164 len mem[_4637] + 32]
                                    else:
                                        mem[floor32(mem[_4637]) + _4637 + 196] = mem[floor32(mem[_4637]) + _4637 + -(mem[_4637] % 32) + 228 len mem[_4637] % 32]
                                        require ext_code.size(address(_4573))
                                        call address(_4573).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4407, address(this.address), 128, mem[_4637], mem[_4637 + 196 len floor32(mem[_4637]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4508 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4636 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4728 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4728 + 36] = 0
                                    mem[_4728 + 68] = _4407
                                    mem[_4728 + 100] = address(_4508)
                                    mem[_4728 + 132] = 128
                                    mem[_4728 + 164] = mem[_4728]
                                    idx = 0
                                    while idx < mem[_4728]:
                                        mem[idx + _4728 + 196] = mem[idx + _4728 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4728] % 32:
                                        require ext_code.size(address(_4636))
                                        call address(_4636).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4407, address(_4508), 128, mem[_4728 + 164 len mem[_4728] + 32]
                                    else:
                                        mem[floor32(mem[_4728]) + _4728 + 196] = mem[floor32(mem[_4728]) + _4728 + -(mem[_4728] % 32) + 228 len mem[_4728] % 32]
                                        require ext_code.size(address(_4636))
                                        call address(_4636).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4407, address(_4508), 128, mem[_4728], mem[_4728 + 196 len floor32(mem[_4728]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4575 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4639 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4639 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4639 + 36] = _4407
                                    mem[_4639 + 68] = 0
                                    mem[_4639 + 100] = this.address
                                    mem[_4639 + 132] = 128
                                    mem[_4639 + 164] = mem[_4639]
                                    t = 0
                                    while t < mem[_4639]:
                                        mem[t + _4639 + 196] = mem[t + _4639 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4639] % 32:
                                        require ext_code.size(address(_4575))
                                        call address(_4575).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4407, 0, address(this.address), 128, mem[_4639 + 164 len mem[_4639] + 32]
                                    else:
                                        mem[floor32(mem[_4639]) + _4639 + 196] = mem[floor32(mem[_4639]) + _4639 + -(mem[_4639] % 32) + 228 len mem[_4639] % 32]
                                        require ext_code.size(address(_4575))
                                        call address(_4575).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4407, 0, address(this.address), 128, mem[_4639], mem[_4639 + 196 len floor32(mem[_4639]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4510 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4638 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4732 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4732 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4732 + 36] = _4407
                                    mem[_4732 + 68] = 0
                                    mem[_4732 + 100] = address(_4510)
                                    mem[_4732 + 132] = 128
                                    mem[_4732 + 164] = mem[_4732]
                                    idx = 0
                                    while idx < mem[_4732]:
                                        mem[idx + _4732 + 196] = mem[idx + _4732 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4732] % 32:
                                        require ext_code.size(address(_4638))
                                        call address(_4638).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4407, 0, address(_4510), 128, mem[_4732 + 164 len mem[_4732] + 32]
                                    else:
                                        mem[floor32(mem[_4732]) + _4732 + 196] = mem[floor32(mem[_4732]) + _4732 + -(mem[_4732] % 32) + 228 len mem[_4732] % 32]
                                        require ext_code.size(address(_4638))
                                        call address(_4638).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4407, 0, address(_4510), 128, mem[_4732], mem[_4732 + 196 len floor32(mem[_4732]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
        else:
            mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
            require 0 < ('cd', 132).length
            mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = s
            idx = 0
            while idx < ('cd', 132).length - 1:
                require idx < ('cd', 4).length
                require idx < ('cd', 132).length
                _2350 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                require idx + 1 < ('cd', 132).length
                _2357 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 160]
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]:
                    if address(_2350) == address(_2350):
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]):
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]):
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                else:
                    if address(_2357) == address(_2350):
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]):
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                revert with 0, '*'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, '+'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] + 10000:
                                revert with 0, '*'
                            if not (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]):
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, '*'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) < 0:
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224])
                                else:
                                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                        revert with 0, '*'
                                    if (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, '+'
                                    require (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] < cd[100]:
                revert with 0, 'J'
            require 0 < ('cd', 132).length
            require 0 < ('cd', 4).length
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 260] = address(('cd', 4)[0])
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 292] = s
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = 68
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256 len 4] = unknown_0xa9059cbb(?????)
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324 len 64] = 0, address(('cd', 4)[0]), Mask(224, 32, s) >> 32
            mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len 4] = Mask(32, 64, s) >> 64
            call address(('cd', 132)[0]) with:
                 gas gas_remaining wei
                args s, Mask(224, 32, address(('cd', 4)[0]), Mask(224, 32, s) >> 32) >> 32, mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not ('cd', 4).length:
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388] = 0
                    idx = 0
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                        require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                            _4408 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4577 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4641 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4641 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4641 + 36] = 0
                                    mem[_4641 + 68] = _4408
                                    mem[_4641 + 100] = this.address
                                    mem[_4641 + 132] = 128
                                    mem[_4641 + 164] = mem[_4641]
                                    s = 0
                                    while s < mem[_4641]:
                                        mem[s + _4641 + 196] = mem[s + _4641 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4641] % 32:
                                        require ext_code.size(address(_4577))
                                        call address(_4577).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4408, address(this.address), 128, mem[_4641 + 164 len mem[_4641] + 32]
                                    else:
                                        mem[floor32(mem[_4641]) + _4641 + 196] = mem[floor32(mem[_4641]) + _4641 + -(mem[_4641] % 32) + 228 len mem[_4641] % 32]
                                        require ext_code.size(address(_4577))
                                        call address(_4577).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4408, address(this.address), 128, mem[_4641], mem[_4641 + 196 len floor32(mem[_4641]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4512 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4640 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4736 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4736 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4736 + 36] = 0
                                    mem[_4736 + 68] = _4408
                                    mem[_4736 + 100] = address(_4512)
                                    mem[_4736 + 132] = 128
                                    mem[_4736 + 164] = mem[_4736]
                                    s = 0
                                    while s < mem[_4736]:
                                        mem[s + _4736 + 196] = mem[s + _4736 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4736] % 32:
                                        require ext_code.size(address(_4640))
                                        call address(_4640).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4408, address(_4512), 128, mem[_4736 + 164 len mem[_4736] + 32]
                                    else:
                                        mem[floor32(mem[_4736]) + _4736 + 196] = mem[floor32(mem[_4736]) + _4736 + -(mem[_4736] % 32) + 228 len mem[_4736] % 32]
                                        require ext_code.size(address(_4640))
                                        call address(_4640).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4408, address(_4512), 128, mem[_4736], mem[_4736 + 196 len floor32(mem[_4736]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4579 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4643 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4643 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4643 + 36] = _4408
                                    mem[_4643 + 68] = 0
                                    mem[_4643 + 100] = this.address
                                    mem[_4643 + 132] = 128
                                    mem[_4643 + 164] = mem[_4643]
                                    s = 0
                                    while s < mem[_4643]:
                                        mem[s + _4643 + 196] = mem[s + _4643 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4643] % 32:
                                        require ext_code.size(address(_4579))
                                        call address(_4579).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4408, 0, address(this.address), 128, mem[_4643 + 164 len mem[_4643] + 32]
                                    else:
                                        mem[floor32(mem[_4643]) + _4643 + 196] = mem[floor32(mem[_4643]) + _4643 + -(mem[_4643] % 32) + 228 len mem[_4643] % 32]
                                        require ext_code.size(address(_4579))
                                        call address(_4579).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4408, 0, address(this.address), 128, mem[_4643], mem[_4643 + 196 len floor32(mem[_4643]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4514 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4642 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4740 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4740 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4740 + 36] = _4408
                                    mem[_4740 + 68] = 0
                                    mem[_4740 + 100] = address(_4514)
                                    mem[_4740 + 132] = 128
                                    mem[_4740 + 164] = mem[_4740]
                                    s = 0
                                    while s < mem[_4740]:
                                        mem[s + _4740 + 196] = mem[s + _4740 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4740] % 32:
                                        require ext_code.size(address(_4642))
                                        call address(_4642).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4408, 0, address(_4514), 128, mem[_4740 + 164 len mem[_4740] + 32]
                                    else:
                                        mem[floor32(mem[_4740]) + _4740 + 196] = mem[floor32(mem[_4740]) + _4740 + -(mem[_4740] % 32) + 228 len mem[_4740] % 32]
                                        require ext_code.size(address(_4642))
                                        call address(_4642).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4408, 0, address(_4514), 128, mem[_4740], mem[_4740 + 196 len floor32(mem[_4740]) + 32]
                        else:
                            _4409 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4581 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4645 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4645 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4645 + 36] = 0
                                    mem[_4645 + 68] = _4409
                                    mem[_4645 + 100] = this.address
                                    mem[_4645 + 132] = 128
                                    mem[_4645 + 164] = mem[_4645]
                                    s = 0
                                    while s < mem[_4645]:
                                        mem[s + _4645 + 196] = mem[s + _4645 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4645] % 32:
                                        require ext_code.size(address(_4581))
                                        call address(_4581).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4409, address(this.address), 128, mem[_4645 + 164 len mem[_4645] + 32]
                                    else:
                                        mem[floor32(mem[_4645]) + _4645 + 196] = mem[floor32(mem[_4645]) + _4645 + -(mem[_4645] % 32) + 228 len mem[_4645] % 32]
                                        require ext_code.size(address(_4581))
                                        call address(_4581).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4409, address(this.address), 128, mem[_4645], mem[_4645 + 196 len floor32(mem[_4645]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4516 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4644 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4744 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4744 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4744 + 36] = 0
                                    mem[_4744 + 68] = _4409
                                    mem[_4744 + 100] = address(_4516)
                                    mem[_4744 + 132] = 128
                                    mem[_4744 + 164] = mem[_4744]
                                    s = 0
                                    while s < mem[_4744]:
                                        mem[s + _4744 + 196] = mem[s + _4744 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4744] % 32:
                                        require ext_code.size(address(_4644))
                                        call address(_4644).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4409, address(_4516), 128, mem[_4744 + 164 len mem[_4744] + 32]
                                    else:
                                        mem[floor32(mem[_4744]) + _4744 + 196] = mem[floor32(mem[_4744]) + _4744 + -(mem[_4744] % 32) + 228 len mem[_4744] % 32]
                                        require ext_code.size(address(_4644))
                                        call address(_4644).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4409, address(_4516), 128, mem[_4744], mem[_4744 + 196 len floor32(mem[_4744]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4583 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4647 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4647 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4647 + 36] = _4409
                                    mem[_4647 + 68] = 0
                                    mem[_4647 + 100] = this.address
                                    mem[_4647 + 132] = 128
                                    mem[_4647 + 164] = mem[_4647]
                                    s = 0
                                    while s < mem[_4647]:
                                        mem[s + _4647 + 196] = mem[s + _4647 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4647] % 32:
                                        require ext_code.size(address(_4583))
                                        call address(_4583).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4409, 0, address(this.address), 128, mem[_4647 + 164 len mem[_4647] + 32]
                                    else:
                                        mem[floor32(mem[_4647]) + _4647 + 196] = mem[floor32(mem[_4647]) + _4647 + -(mem[_4647] % 32) + 228 len mem[_4647] % 32]
                                        require ext_code.size(address(_4583))
                                        call address(_4583).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4409, 0, address(this.address), 128, mem[_4647], mem[_4647 + 196 len floor32(mem[_4647]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4518 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4646 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4748 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4748 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4748 + 36] = _4409
                                    mem[_4748 + 68] = 0
                                    mem[_4748 + 100] = address(_4518)
                                    mem[_4748 + 132] = 128
                                    mem[_4748 + 164] = mem[_4748]
                                    s = 0
                                    while s < mem[_4748]:
                                        mem[s + _4748 + 196] = mem[s + _4748 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4748] % 32:
                                        require ext_code.size(address(_4646))
                                        call address(_4646).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4409, 0, address(_4518), 128, mem[_4748 + 164 len mem[_4748] + 32]
                                    else:
                                        mem[floor32(mem[_4748]) + _4748 + 196] = mem[floor32(mem[_4748]) + _4748 + -(mem[_4748] % 32) + 228 len mem[_4748] % 32]
                                        require ext_code.size(address(_4646))
                                        call address(_4646).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4409, 0, address(_4518), 128, mem[_4748], mem[_4748 + 196 len floor32(mem[_4748]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    require ('cd', 4).length >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 388] = 0
                    s = 0
                    while s < ('cd', 132).length - 1:
                        require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                        require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                        require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                            _4410 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4585 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4649 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4649 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4649 + 36] = 0
                                    mem[_4649 + 68] = _4410
                                    mem[_4649 + 100] = this.address
                                    mem[_4649 + 132] = 128
                                    mem[_4649 + 164] = mem[_4649]
                                    t = 0
                                    while t < mem[_4649]:
                                        mem[t + _4649 + 196] = mem[t + _4649 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4649] % 32:
                                        require ext_code.size(address(_4585))
                                        call address(_4585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4410, address(this.address), 128, mem[_4649 + 164 len mem[_4649] + 32]
                                    else:
                                        mem[floor32(mem[_4649]) + _4649 + 196] = mem[floor32(mem[_4649]) + _4649 + -(mem[_4649] % 32) + 228 len mem[_4649] % 32]
                                        require ext_code.size(address(_4585))
                                        call address(_4585).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4410, address(this.address), 128, mem[_4649], mem[_4649 + 196 len floor32(mem[_4649]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4520 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4648 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4752 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4752 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4752 + 36] = 0
                                    mem[_4752 + 68] = _4410
                                    mem[_4752 + 100] = address(_4520)
                                    mem[_4752 + 132] = 128
                                    mem[_4752 + 164] = mem[_4752]
                                    idx = 0
                                    while idx < mem[_4752]:
                                        mem[idx + _4752 + 196] = mem[idx + _4752 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4752] % 32:
                                        require ext_code.size(address(_4648))
                                        call address(_4648).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4410, address(_4520), 128, mem[_4752 + 164 len mem[_4752] + 32]
                                    else:
                                        mem[floor32(mem[_4752]) + _4752 + 196] = mem[floor32(mem[_4752]) + _4752 + -(mem[_4752] % 32) + 228 len mem[_4752] % 32]
                                        require ext_code.size(address(_4648))
                                        call address(_4648).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4410, address(_4520), 128, mem[_4752], mem[_4752 + 196 len floor32(mem[_4752]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4587 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4651 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4651 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4651 + 36] = _4410
                                    mem[_4651 + 68] = 0
                                    mem[_4651 + 100] = this.address
                                    mem[_4651 + 132] = 128
                                    mem[_4651 + 164] = mem[_4651]
                                    t = 0
                                    while t < mem[_4651]:
                                        mem[t + _4651 + 196] = mem[t + _4651 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4651] % 32:
                                        require ext_code.size(address(_4587))
                                        call address(_4587).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4410, 0, address(this.address), 128, mem[_4651 + 164 len mem[_4651] + 32]
                                    else:
                                        mem[floor32(mem[_4651]) + _4651 + 196] = mem[floor32(mem[_4651]) + _4651 + -(mem[_4651] % 32) + 228 len mem[_4651] % 32]
                                        require ext_code.size(address(_4587))
                                        call address(_4587).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4410, 0, address(this.address), 128, mem[_4651], mem[_4651 + 196 len floor32(mem[_4651]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4522 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4650 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4756 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4756 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4756 + 36] = _4410
                                    mem[_4756 + 68] = 0
                                    mem[_4756 + 100] = address(_4522)
                                    mem[_4756 + 132] = 128
                                    mem[_4756 + 164] = mem[_4756]
                                    idx = 0
                                    while idx < mem[_4756]:
                                        mem[idx + _4756 + 196] = mem[idx + _4756 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4756] % 32:
                                        require ext_code.size(address(_4650))
                                        call address(_4650).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4410, 0, address(_4522), 128, mem[_4756 + 164 len mem[_4756] + 32]
                                    else:
                                        mem[floor32(mem[_4756]) + _4756 + 196] = mem[floor32(mem[_4756]) + _4756 + -(mem[_4756] % 32) + 228 len mem[_4756] % 32]
                                        require ext_code.size(address(_4650))
                                        call address(_4650).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4410, 0, address(_4522), 128, mem[_4756], mem[_4756 + 196 len floor32(mem[_4756]) + 32]
                        else:
                            _4411 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 400 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4589 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4653 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4653 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4653 + 36] = 0
                                    mem[_4653 + 68] = _4411
                                    mem[_4653 + 100] = this.address
                                    mem[_4653 + 132] = 128
                                    mem[_4653 + 164] = mem[_4653]
                                    t = 0
                                    while t < mem[_4653]:
                                        mem[t + _4653 + 196] = mem[t + _4653 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4653] % 32:
                                        require ext_code.size(address(_4589))
                                        call address(_4589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4411, address(this.address), 128, mem[_4653 + 164 len mem[_4653] + 32]
                                    else:
                                        mem[floor32(mem[_4653]) + _4653 + 196] = mem[floor32(mem[_4653]) + _4653 + -(mem[_4653] % 32) + 228 len mem[_4653] % 32]
                                        require ext_code.size(address(_4589))
                                        call address(_4589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4411, address(this.address), 128, mem[_4653], mem[_4653 + 196 len floor32(mem[_4653]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4524 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4652 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4760 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4760 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4760 + 36] = 0
                                    mem[_4760 + 68] = _4411
                                    mem[_4760 + 100] = address(_4524)
                                    mem[_4760 + 132] = 128
                                    mem[_4760 + 164] = mem[_4760]
                                    idx = 0
                                    while idx < mem[_4760]:
                                        mem[idx + _4760 + 196] = mem[idx + _4760 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4760] % 32:
                                        require ext_code.size(address(_4652))
                                        call address(_4652).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4411, address(_4524), 128, mem[_4760 + 164 len mem[_4760] + 32]
                                    else:
                                        mem[floor32(mem[_4760]) + _4760 + 196] = mem[floor32(mem[_4760]) + _4760 + -(mem[_4760] % 32) + 228 len mem[_4760] % 32]
                                        require ext_code.size(address(_4652))
                                        call address(_4652).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4411, address(_4524), 128, mem[_4760], mem[_4760 + 196 len floor32(mem[_4760]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4591 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4655 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4655 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4655 + 36] = _4411
                                    mem[_4655 + 68] = 0
                                    mem[_4655 + 100] = this.address
                                    mem[_4655 + 132] = 128
                                    mem[_4655 + 164] = mem[_4655]
                                    t = 0
                                    while t < mem[_4655]:
                                        mem[t + _4655 + 196] = mem[t + _4655 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4655] % 32:
                                        require ext_code.size(address(_4591))
                                        call address(_4591).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4411, 0, address(this.address), 128, mem[_4655 + 164 len mem[_4655] + 32]
                                    else:
                                        mem[floor32(mem[_4655]) + _4655 + 196] = mem[floor32(mem[_4655]) + _4655 + -(mem[_4655] % 32) + 228 len mem[_4655] % 32]
                                        require ext_code.size(address(_4591))
                                        call address(_4591).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4411, 0, address(this.address), 128, mem[_4655], mem[_4655 + 196 len floor32(mem[_4655]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4526 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324]
                                    _4654 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]
                                    _4764 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4764 + 36] = _4411
                                    mem[_4764 + 68] = 0
                                    mem[_4764 + 100] = address(_4526)
                                    mem[_4764 + 132] = 128
                                    mem[_4764 + 164] = mem[_4764]
                                    idx = 0
                                    while idx < mem[_4764]:
                                        mem[idx + _4764 + 196] = mem[idx + _4764 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4764] % 32:
                                        require ext_code.size(address(_4654))
                                        call address(_4654).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4411, 0, address(_4526), 128, mem[_4764 + 164 len mem[_4764] + 32]
                                    else:
                                        mem[floor32(mem[_4764]) + _4764 + 196] = mem[floor32(mem[_4764]) + _4764 + -(mem[_4764] % 32) + 228 len mem[_4764] % 32]
                                        require ext_code.size(address(_4654))
                                        call address(_4654).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4411, 0, address(_4526), 128, mem[_4764], mem[_4764 + 196 len floor32(mem[_4764]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
            else:
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 324] = return_data.size
                mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not return_data.size:
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 0
                    idx = 0
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                        require idx + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            _4412 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4593 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4657 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4657 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4657 + 36] = 0
                                    mem[_4657 + 68] = _4412
                                    mem[_4657 + 100] = this.address
                                    mem[_4657 + 132] = 128
                                    mem[_4657 + 164] = mem[_4657]
                                    s = 0
                                    while s < mem[_4657]:
                                        mem[s + _4657 + 196] = mem[s + _4657 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4657] % 32:
                                        require ext_code.size(address(_4593))
                                        call address(_4593).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4412, address(this.address), 128, mem[_4657 + 164 len mem[_4657] + 32]
                                    else:
                                        mem[floor32(mem[_4657]) + _4657 + 196] = mem[floor32(mem[_4657]) + _4657 + -(mem[_4657] % 32) + 228 len mem[_4657] % 32]
                                        require ext_code.size(address(_4593))
                                        call address(_4593).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4412, address(this.address), 128, mem[_4657], mem[_4657 + 196 len floor32(mem[_4657]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4528 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4656 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4768 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4768 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4768 + 36] = 0
                                    mem[_4768 + 68] = _4412
                                    mem[_4768 + 100] = address(_4528)
                                    mem[_4768 + 132] = 128
                                    mem[_4768 + 164] = mem[_4768]
                                    s = 0
                                    while s < mem[_4768]:
                                        mem[s + _4768 + 196] = mem[s + _4768 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4768] % 32:
                                        require ext_code.size(address(_4656))
                                        call address(_4656).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4412, address(_4528), 128, mem[_4768 + 164 len mem[_4768] + 32]
                                    else:
                                        mem[floor32(mem[_4768]) + _4768 + 196] = mem[floor32(mem[_4768]) + _4768 + -(mem[_4768] % 32) + 228 len mem[_4768] % 32]
                                        require ext_code.size(address(_4656))
                                        call address(_4656).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4412, address(_4528), 128, mem[_4768], mem[_4768 + 196 len floor32(mem[_4768]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4595 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4659 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4659 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4659 + 36] = _4412
                                    mem[_4659 + 68] = 0
                                    mem[_4659 + 100] = this.address
                                    mem[_4659 + 132] = 128
                                    mem[_4659 + 164] = mem[_4659]
                                    s = 0
                                    while s < mem[_4659]:
                                        mem[s + _4659 + 196] = mem[s + _4659 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4659] % 32:
                                        require ext_code.size(address(_4595))
                                        call address(_4595).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4412, 0, address(this.address), 128, mem[_4659 + 164 len mem[_4659] + 32]
                                    else:
                                        mem[floor32(mem[_4659]) + _4659 + 196] = mem[floor32(mem[_4659]) + _4659 + -(mem[_4659] % 32) + 228 len mem[_4659] % 32]
                                        require ext_code.size(address(_4595))
                                        call address(_4595).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4412, 0, address(this.address), 128, mem[_4659], mem[_4659 + 196 len floor32(mem[_4659]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4530 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4658 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4772 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4772 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4772 + 36] = _4412
                                    mem[_4772 + 68] = 0
                                    mem[_4772 + 100] = address(_4530)
                                    mem[_4772 + 132] = 128
                                    mem[_4772 + 164] = mem[_4772]
                                    s = 0
                                    while s < mem[_4772]:
                                        mem[s + _4772 + 196] = mem[s + _4772 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4772] % 32:
                                        require ext_code.size(address(_4658))
                                        call address(_4658).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4412, 0, address(_4530), 128, mem[_4772 + 164 len mem[_4772] + 32]
                                    else:
                                        mem[floor32(mem[_4772]) + _4772 + 196] = mem[floor32(mem[_4772]) + _4772 + -(mem[_4772] % 32) + 228 len mem[_4772] % 32]
                                        require ext_code.size(address(_4658))
                                        call address(_4658).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4412, 0, address(_4530), 128, mem[_4772], mem[_4772 + 196 len floor32(mem[_4772]) + 32]
                        else:
                            _4413 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * idx) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4597 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4661 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4661 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4661 + 36] = 0
                                    mem[_4661 + 68] = _4413
                                    mem[_4661 + 100] = this.address
                                    mem[_4661 + 132] = 128
                                    mem[_4661 + 164] = mem[_4661]
                                    s = 0
                                    while s < mem[_4661]:
                                        mem[s + _4661 + 196] = mem[s + _4661 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4661] % 32:
                                        require ext_code.size(address(_4597))
                                        call address(_4597).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4413, address(this.address), 128, mem[_4661 + 164 len mem[_4661] + 32]
                                    else:
                                        mem[floor32(mem[_4661]) + _4661 + 196] = mem[floor32(mem[_4661]) + _4661 + -(mem[_4661] % 32) + 228 len mem[_4661] % 32]
                                        require ext_code.size(address(_4597))
                                        call address(_4597).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4413, address(this.address), 128, mem[_4661], mem[_4661 + 196 len floor32(mem[_4661]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4532 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4660 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4776 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4776 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4776 + 36] = 0
                                    mem[_4776 + 68] = _4413
                                    mem[_4776 + 100] = address(_4532)
                                    mem[_4776 + 132] = 128
                                    mem[_4776 + 164] = mem[_4776]
                                    s = 0
                                    while s < mem[_4776]:
                                        mem[s + _4776 + 196] = mem[s + _4776 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4776] % 32:
                                        require ext_code.size(address(_4660))
                                        call address(_4660).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4413, address(_4532), 128, mem[_4776 + 164 len mem[_4776] + 32]
                                    else:
                                        mem[floor32(mem[_4776]) + _4776 + 196] = mem[floor32(mem[_4776]) + _4776 + -(mem[_4776] % 32) + 228 len mem[_4776] % 32]
                                        require ext_code.size(address(_4660))
                                        call address(_4660).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4413, address(_4532), 128, mem[_4776], mem[_4776 + 196 len floor32(mem[_4776]) + 32]
                            else:
                                if idx >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4599 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4663 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4663 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4663 + 36] = _4413
                                    mem[_4663 + 68] = 0
                                    mem[_4663 + 100] = this.address
                                    mem[_4663 + 132] = 128
                                    mem[_4663 + 164] = mem[_4663]
                                    s = 0
                                    while s < mem[_4663]:
                                        mem[s + _4663 + 196] = mem[s + _4663 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4663] % 32:
                                        require ext_code.size(address(_4599))
                                        call address(_4599).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4413, 0, address(this.address), 128, mem[_4663 + 164 len mem[_4663] + 32]
                                    else:
                                        mem[floor32(mem[_4663]) + _4663 + 196] = mem[floor32(mem[_4663]) + _4663 + -(mem[_4663] % 32) + 228 len mem[_4663] % 32]
                                        require ext_code.size(address(_4599))
                                        call address(_4599).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4413, 0, address(this.address), 128, mem[_4663], mem[_4663 + 196 len floor32(mem[_4663]) + 32]
                                else:
                                    require idx + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4534 = mem[(32 * idx + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require idx < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4662 = mem[(32 * idx) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4780 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4780 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4780 + 36] = _4413
                                    mem[_4780 + 68] = 0
                                    mem[_4780 + 100] = address(_4534)
                                    mem[_4780 + 132] = 128
                                    mem[_4780 + 164] = mem[_4780]
                                    s = 0
                                    while s < mem[_4780]:
                                        mem[s + _4780 + 196] = mem[s + _4780 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_4780] % 32:
                                        require ext_code.size(address(_4662))
                                        call address(_4662).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4413, 0, address(_4534), 128, mem[_4780 + 164 len mem[_4780] + 32]
                                    else:
                                        mem[floor32(mem[_4780]) + _4780 + 196] = mem[floor32(mem[_4780]) + _4780 + -(mem[_4780] % 32) + 228 len mem[_4780] % 32]
                                        require ext_code.size(address(_4662))
                                        call address(_4662).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4413, 0, address(_4534), 128, mem[_4780], mem[_4780 + 196 len floor32(mem[_4780]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    if not mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 356]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325] = ('cd', 4).length
                    mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[64] = (98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] = ('cd', 132).length
                    mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                    mem[(98 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 0
                    s = 0
                    while s < ('cd', 132).length - 1:
                        require s < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                        require s + 1 < mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                        require s + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            _4414 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4601 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4665 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4665 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4665 + 36] = 0
                                    mem[_4665 + 68] = _4414
                                    mem[_4665 + 100] = this.address
                                    mem[_4665 + 132] = 128
                                    mem[_4665 + 164] = mem[_4665]
                                    t = 0
                                    while t < mem[_4665]:
                                        mem[t + _4665 + 196] = mem[t + _4665 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4665] % 32:
                                        require ext_code.size(address(_4601))
                                        call address(_4601).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4414, address(this.address), 128, mem[_4665 + 164 len mem[_4665] + 32]
                                    else:
                                        mem[floor32(mem[_4665]) + _4665 + 196] = mem[floor32(mem[_4665]) + _4665 + -(mem[_4665] % 32) + 228 len mem[_4665] % 32]
                                        require ext_code.size(address(_4601))
                                        call address(_4601).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4414, address(this.address), 128, mem[_4665], mem[_4665 + 196 len floor32(mem[_4665]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4536 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4664 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4784 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4784 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4784 + 36] = 0
                                    mem[_4784 + 68] = _4414
                                    mem[_4784 + 100] = address(_4536)
                                    mem[_4784 + 132] = 128
                                    mem[_4784 + 164] = mem[_4784]
                                    idx = 0
                                    while idx < mem[_4784]:
                                        mem[idx + _4784 + 196] = mem[idx + _4784 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4784] % 32:
                                        require ext_code.size(address(_4664))
                                        call address(_4664).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4414, address(_4536), 128, mem[_4784 + 164 len mem[_4784] + 32]
                                    else:
                                        mem[floor32(mem[_4784]) + _4784 + 196] = mem[floor32(mem[_4784]) + _4784 + -(mem[_4784] % 32) + 228 len mem[_4784] % 32]
                                        require ext_code.size(address(_4664))
                                        call address(_4664).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4414, address(_4536), 128, mem[_4784], mem[_4784 + 196 len floor32(mem[_4784]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4603 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4667 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4667 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4667 + 36] = _4414
                                    mem[_4667 + 68] = 0
                                    mem[_4667 + 100] = this.address
                                    mem[_4667 + 132] = 128
                                    mem[_4667 + 164] = mem[_4667]
                                    t = 0
                                    while t < mem[_4667]:
                                        mem[t + _4667 + 196] = mem[t + _4667 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4667] % 32:
                                        require ext_code.size(address(_4603))
                                        call address(_4603).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4414, 0, address(this.address), 128, mem[_4667 + 164 len mem[_4667] + 32]
                                    else:
                                        mem[floor32(mem[_4667]) + _4667 + 196] = mem[floor32(mem[_4667]) + _4667 + -(mem[_4667] % 32) + 228 len mem[_4667] % 32]
                                        require ext_code.size(address(_4603))
                                        call address(_4603).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4414, 0, address(this.address), 128, mem[_4667], mem[_4667 + 196 len floor32(mem[_4667]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4538 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4666 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4788 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4788 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4788 + 36] = _4414
                                    mem[_4788 + 68] = 0
                                    mem[_4788 + 100] = address(_4538)
                                    mem[_4788 + 132] = 128
                                    mem[_4788 + 164] = mem[_4788]
                                    idx = 0
                                    while idx < mem[_4788]:
                                        mem[idx + _4788 + 196] = mem[idx + _4788 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4788] % 32:
                                        require ext_code.size(address(_4666))
                                        call address(_4666).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4414, 0, address(_4538), 128, mem[_4788 + 164 len mem[_4788] + 32]
                                    else:
                                        mem[floor32(mem[_4788]) + _4788 + 196] = mem[floor32(mem[_4788]) + _4788 + -(mem[_4788] % 32) + 228 len mem[_4788] % 32]
                                        require ext_code.size(address(_4666))
                                        call address(_4666).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4414, 0, address(_4538), 128, mem[_4788], mem[_4788 + 196 len floor32(mem[_4788]) + 32]
                        else:
                            _4415 = mem[(32 * s + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                            if mem[(32 * s) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * s + 1) + (64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4605 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4669 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4669 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4669 + 36] = 0
                                    mem[_4669 + 68] = _4415
                                    mem[_4669 + 100] = this.address
                                    mem[_4669 + 132] = 128
                                    mem[_4669 + 164] = mem[_4669]
                                    t = 0
                                    while t < mem[_4669]:
                                        mem[t + _4669 + 196] = mem[t + _4669 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4669] % 32:
                                        require ext_code.size(address(_4605))
                                        call address(_4605).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4415, address(this.address), 128, mem[_4669 + 164 len mem[_4669] + 32]
                                    else:
                                        mem[floor32(mem[_4669]) + _4669 + 196] = mem[floor32(mem[_4669]) + _4669 + -(mem[_4669] % 32) + 228 len mem[_4669] % 32]
                                        require ext_code.size(address(_4605))
                                        call address(_4605).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4415, address(this.address), 128, mem[_4669], mem[_4669 + 196 len floor32(mem[_4669]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4540 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4668 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4792 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4792 + 36] = 0
                                    mem[_4792 + 68] = _4415
                                    mem[_4792 + 100] = address(_4540)
                                    mem[_4792 + 132] = 128
                                    mem[_4792 + 164] = mem[_4792]
                                    idx = 0
                                    while idx < mem[_4792]:
                                        mem[idx + _4792 + 196] = mem[idx + _4792 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4792] % 32:
                                        require ext_code.size(address(_4668))
                                        call address(_4668).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4415, address(_4540), 128, mem[_4792 + 164 len mem[_4792] + 32]
                                    else:
                                        mem[floor32(mem[_4792]) + _4792 + 196] = mem[floor32(mem[_4792]) + _4792 + -(mem[_4792] % 32) + 228 len mem[_4792] % 32]
                                        require ext_code.size(address(_4668))
                                        call address(_4668).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _4415, address(_4540), 128, mem[_4792], mem[_4792 + 196 len floor32(mem[_4792]) + 32]
                            else:
                                if s >= mem[(64 * ('cd', 132).length) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4607 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4671 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4671 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4671 + 36] = _4415
                                    mem[_4671 + 68] = 0
                                    mem[_4671 + 100] = this.address
                                    mem[_4671 + 132] = 128
                                    mem[_4671 + 164] = mem[_4671]
                                    t = 0
                                    while t < mem[_4671]:
                                        mem[t + _4671 + 196] = mem[t + _4671 + 32]
                                        t = t + 32
                                        continue 
                                    if not mem[_4671] % 32:
                                        require ext_code.size(address(_4607))
                                        call address(_4607).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4415, 0, address(this.address), 128, mem[_4671 + 164 len mem[_4671] + 32]
                                    else:
                                        mem[floor32(mem[_4671]) + _4671 + 196] = mem[floor32(mem[_4671]) + _4671 + -(mem[_4671] % 32) + 228 len mem[_4671] % 32]
                                        require ext_code.size(address(_4607))
                                        call address(_4607).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4415, 0, address(this.address), 128, mem[_4671], mem[_4671 + 196 len floor32(mem[_4671]) + 32]
                                else:
                                    require s + 1 < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4542 = mem[(32 * s + 1) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    require s < mem[(64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 325]
                                    _4670 = mem[(32 * s) + (64 * ('cd', 132).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                    _4796 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4796 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4796 + 36] = _4415
                                    mem[_4796 + 68] = 0
                                    mem[_4796 + 100] = address(_4542)
                                    mem[_4796 + 132] = 128
                                    mem[_4796 + 164] = mem[_4796]
                                    idx = 0
                                    while idx < mem[_4796]:
                                        mem[idx + _4796 + 196] = mem[idx + _4796 + 32]
                                        idx = idx + 32
                                        continue 
                                    if not mem[_4796] % 32:
                                        require ext_code.size(address(_4670))
                                        call address(_4670).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4415, 0, address(_4542), 128, mem[_4796 + 164 len mem[_4796] + 32]
                                    else:
                                        mem[floor32(mem[_4796]) + _4796 + 196] = mem[floor32(mem[_4796]) + _4796 + -(mem[_4796] % 32) + 228 len mem[_4796] % 32]
                                        require ext_code.size(address(_4670))
                                        call address(_4670).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _4415, 0, address(_4542), 128, mem[_4796], mem[_4796 + 196 len floor32(mem[_4796]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
}



}
