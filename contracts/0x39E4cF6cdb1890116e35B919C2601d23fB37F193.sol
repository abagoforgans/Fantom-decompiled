contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
uint8 stor2; offset 160
uint128 stor2; offset 160
address saleTokenAddress;
uint256 hardcap;
uint256 startTime;
uint256 endTime;
uint256 lockTime;
uint256 maxParticipantCount;
uint256 sub_4c1199f1;
uint256 sub_92f5593e;
uint256 sub_6f5e270c;
uint256 sub_6b8421ec;
mapping of struct sub_f38498dc;
mapping of struct sub_276ce509;
array of struct sub_e06a5be0;

function lockTime() {
    return lockTime
}

function sub_276ce509(?) {
    require calldata.size - 4 >= 32
    return sub_276ce509[arg1].field_0, sub_276ce509[arg1].field_256
}

function endTime() {
    return endTime
}

function sub_4c1199f1(?) {
    return sub_4c1199f1
}

function sub_6b8421ec(?) {
    return sub_6b8421ec
}

function sub_6f5e270c(?) {
    return sub_6f5e270c
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_92f5593e(?) {
    return sub_92f5593e
}

function hardcap() {
    return hardcap
}

function maxParticipantCount() {
    return maxParticipantCount
}

function sub_c6ee20d2(?) {
    return bool(uint8(stor2.field_160))
}

function sub_e06a5be0(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e06a5be0.length
    return sub_e06a5be0[arg1].field_0
}

function saleToken() {
    return saleTokenAddress
}

function sub_f38498dc(?) {
    require calldata.size - 4 >= 32
    return sub_f38498dc[arg1].field_0, 
           sub_f38498dc[arg1].field_256,
           sub_f38498dc[arg1].field_512,
           sub_f38498dc[arg1].field_768,
           sub_f38498dc[arg1].field_1024
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function changeContractStatus(bool arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
    stor0 = 1
}

function addNewClaimRound(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_276ce509[arg1].field_0 = arg2
    sub_276ce509[arg1].field_256 = arg3
    stor0 = 1
}

function withdrawBNB() payable {
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transferAnyERC20Token(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer out tokens!'
}

function calculateTokenAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_92f5593e:
        if not hardcap:
            revert with 0, 'SafeMath: division by zero'
        return (0 / hardcap)
    if arg1 * sub_92f5593e / sub_92f5593e != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not hardcap:
        revert with 0, 'SafeMath: division by zero'
    return (arg1 * sub_92f5593e / hardcap)
}

function returnParticipants() {
    if not sub_e06a5be0.length:
        mem[(32 * sub_e06a5be0.length) + 128] = 32
        mem[(32 * sub_e06a5be0.length) + 160] = sub_e06a5be0.length
        mem[(32 * sub_e06a5be0.length) + 192 len floor32(sub_e06a5be0.length)] = mem[128 len floor32(sub_e06a5be0.length)]
        return memory
          from (32 * sub_e06a5be0.length) + 128
           len (96 * sub_e06a5be0.length) + 64
    mem[128] = address(sub_e06a5be0.field_0)
    idx = 128
    s = 0
    while (32 * sub_e06a5be0.length) + 96 > idx:
        mem[idx + 32] = sub_e06a5be0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_e06a5be0.length) + 192 len floor32(sub_e06a5be0.length)] = mem[128 len floor32(sub_e06a5be0.length)]
    return Array(len=sub_e06a5be0.length, data=mem[128 len floor32(sub_e06a5be0.length)], mem[(32 * sub_e06a5be0.length) + floor32(sub_e06a5be0.length) + 192 len (32 * sub_e06a5be0.length) - floor32(sub_e06a5be0.length)]), 
}

function buyTokens() payable {
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if not uint8(stor2.field_160):
        revert with 0, 'Contract is not active'
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    if msg.value + hardcap < hardcap:
        revert with 0, 'SafeMath: addition overflow'
    require hardcap <= msg.value + hardcap
    if not sub_92f5593e:
        if not hardcap:
            revert with 0, 'SafeMath: division by zero'
        if msg.value + sub_f38498dc[msg.sender].field_0 < sub_f38498dc[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        sub_f38498dc[msg.sender].field_0 += msg.value
        if (0 / hardcap) + sub_f38498dc[msg.sender].field_256 < sub_f38498dc[msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        sub_f38498dc[msg.sender].field_256 += 0 / hardcap
        if (0 / hardcap) + sub_6f5e270c < sub_6f5e270c:
            revert with 0, 'SafeMath: addition overflow'
        sub_6f5e270c += 0 / hardcap
    else:
        if msg.value * sub_92f5593e / sub_92f5593e != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not hardcap:
            revert with 0, 'SafeMath: division by zero'
        if msg.value + sub_f38498dc[msg.sender].field_0 < sub_f38498dc[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        sub_f38498dc[msg.sender].field_0 += msg.value
        if (msg.value * sub_92f5593e / hardcap) + sub_f38498dc[msg.sender].field_256 < sub_f38498dc[msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        sub_f38498dc[msg.sender].field_256 += msg.value * sub_92f5593e / hardcap
        if (msg.value * sub_92f5593e / hardcap) + sub_6f5e270c < sub_6f5e270c:
            revert with 0, 'SafeMath: addition overflow'
        sub_6f5e270c += msg.value * sub_92f5593e / hardcap
    if msg.value + sub_6b8421ec < sub_6b8421ec:
        revert with 0, 'SafeMath: addition overflow'
    sub_6b8421ec += msg.value
    stor0 = 1
}

function claimTokens() {
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require block.timestamp >= lockTime
    require block.timestamp >= sub_276ce509[stor12[msg.sender].field_512].field_0
    if not sub_f38498dc[msg.sender].field_256:
        if sub_f38498dc[msg.sender].field_1024 < sub_f38498dc[msg.sender].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        require sub_f38498dc[msg.sender].field_256 >= sub_f38498dc[msg.sender].field_1024
    else:
        if sub_276ce509[stor12[msg.sender].field_512].field_256 * sub_f38498dc[msg.sender].field_256 / sub_f38498dc[msg.sender].field_256 != sub_276ce509[stor12[msg.sender].field_512].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (sub_276ce509[stor12[msg.sender].field_512].field_256 * sub_f38498dc[msg.sender].field_256 / 100) + sub_f38498dc[msg.sender].field_1024 < sub_f38498dc[msg.sender].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        require sub_f38498dc[msg.sender].field_256 >= (sub_276ce509[stor12[msg.sender].field_512].field_256 * sub_f38498dc[msg.sender].field_256 / 100) + sub_f38498dc[msg.sender].field_1024
    if not sub_f38498dc[msg.sender].field_256:
        require ext_code.size(saleTokenAddress)
        call saleTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if sub_276ce509[stor12[msg.sender].field_512].field_256 * sub_f38498dc[msg.sender].field_256 / sub_f38498dc[msg.sender].field_256 != sub_276ce509[stor12[msg.sender].field_512].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(saleTokenAddress)
        call saleTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_276ce509[stor12[msg.sender].field_512].field_256 * sub_f38498dc[msg.sender].field_256 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if sub_f38498dc[msg.sender].field_512 + 1 < sub_f38498dc[msg.sender].field_512:
        revert with 0, 'SafeMath: addition overflow'
    sub_f38498dc[msg.sender].field_512++
    sub_f38498dc[msg.sender].field_768 = block.timestamp
    if not sub_f38498dc[msg.sender].field_256:
        if sub_f38498dc[msg.sender].field_1024 < sub_f38498dc[msg.sender].field_1024:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if sub_276ce509[stor12[msg.sender].field_512].field_256 * sub_f38498dc[msg.sender].field_256 / sub_f38498dc[msg.sender].field_256 != sub_276ce509[stor12[msg.sender].field_512].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if (sub_276ce509[stor12[msg.sender].field_512].field_256 * sub_f38498dc[msg.sender].field_256 / 100) + sub_f38498dc[msg.sender].field_1024 < sub_f38498dc[msg.sender].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        sub_f38498dc[msg.sender].field_1024 += sub_276ce509[stor12[msg.sender].field_512].field_256 * sub_f38498dc[msg.sender].field_256 / 100
    stor0 = 1
}



}
