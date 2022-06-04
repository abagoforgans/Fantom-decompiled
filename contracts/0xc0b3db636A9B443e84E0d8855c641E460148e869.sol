contract main {




// =====================  Runtime code  =====================


address owner;
address marketplaceAddress;
address bundleMarketplaceAddress;
uint256 mintFee;
uint256 platformFee;
address feeRecipientAddress;
mapping of uint8 stor6;

function mintFee() {
    return mintFee
}

function platformFee() {
    return platformFee
}

function feeRecipient() {
    return feeRecipientAddress
}

function owner() {
    return owner
}

function bundleMarketplace() {
    return bundleMarketplaceAddress
}

function marketplace() {
    return marketplaceAddress
}

function exists(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[11876 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateMintFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[11876 len 32]
    mintFee = arg1
}

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[11876 len 32]
    platformFee = arg1
}

function updateMarketplace(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[11876 len 32]
    marketplaceAddress = arg1
}

function updateFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[11876 len 32]
    feeRecipientAddress = arg1
}

function updateBundleMarketplace(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[11876 len 32]
    bundleMarketplaceAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[11876 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[11838 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_14d76ffc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if msg.value < platformFee:
        revert with 0, 'Insufficient funds.'
    call feeRecipientAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Transfer failed'
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 8675] = code.data[3163 len 8675]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 8899] = mintFee
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 8931] = feeRecipientAddress
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 8963] = marketplaceAddress
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 8995] = bundleMarketplaceAddress
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 8835] = 192
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 9027] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 9059 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 8867] = arg1.length + 224
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 9059] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 9091 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 8931]
            else:
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 9091] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 9123 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 8963]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 9059] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 9091 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 8867] = floor32(arg1.length) + 256
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 9091] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 9123 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 8963]
            else:
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 9123] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 9155 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 8995]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor6[address(create.new_address)] = 1
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xf2fde38b with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit ContractCreated(address arg1, address arg2):
                             0,
                             Mask(224, 0, msg.sender),
                             address(create.new_address),
        return 0, uint128(create.new_address) << 96
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 161
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = return_data.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Transfer failed'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 161 len 8675] = code.data[3163 len 8675]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 8900] = mintFee
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 8932] = feeRecipientAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 8964] = marketplaceAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 8996] = bundleMarketplaceAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 8836] = 192
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 9028] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 9060 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 8868] = arg1.length + 224
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 9060] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 9092 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 161 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 8931]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 9092] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 9124 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 161 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 8963]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 9060] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + -(arg1.length % 32) + 9092 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 8868] = floor32(arg1.length) + 256
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 9092] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 9124 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 161 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 8963]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 9124] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 9156 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 161 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 8995]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor6[address(create.new_address)] = 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ContractCreated(msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
