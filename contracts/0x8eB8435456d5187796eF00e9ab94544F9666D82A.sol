contract main {




// =====================  Runtime code  =====================


const sub_fc7a11e9(?) = (24 * 3600)


address TOKENAddress;
address owner;
uint256 sub_741e7901;
uint256 sub_be8ec831;
uint256 claimStartAt;
uint256 sub_027ed411;
uint256 sub_32a1f201;
uint256 sub_af598c7a;
uint256 totalTokensToSell;
uint256 sub_9fa077fb;
uint256 maxPerUser;
uint256 totalSold;
uint8 saleEnded;
mapping of uint256 sub_f89e97d0;

function sub_027ed411(?) {
    return sub_027ed411
}

function maxPerUser() {
    return maxPerUser
}

function sub_32a1f201(?) {
    return sub_32a1f201
}

function totalTokensToSell() {
    return totalTokensToSell
}

function claimStartAt() {
    return claimStartAt
}

function sub_741e7901(?) {
    return sub_741e7901
}

function TOKEN() {
    return TOKENAddress
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function saleEnded() {
    return bool(saleEnded)
}

function sub_9fa077fb(?) {
    return sub_9fa077fb
}

function sub_af598c7a(?) {
    return sub_af598c7a
}

function sub_be8ec831(?) {
    return sub_be8ec831
}

function sub_f89e97d0(?) {
    require calldata.size - 4 >= 32
    return sub_f89e97d0[arg1]
}

function _fallback() payable {
    revert
}

function endSale() {
    require msg.sender == owner
    require not saleEnded
    saleEnded = 1
}

function sub_02fd565b(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_027ed411 = arg1
}

function sub_de0af460(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_32a1f201 = arg1
}

function sub_f168361a(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_af598c7a = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function setMaxPerUser(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    maxPerUser = arg1
}

function setSellEndDate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_be8ec831 = arg1
}

function setSellStartDate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_741e7901 = arg1
}

function setClaimStartDate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    claimStartAt = arg1
}

function setMinPerTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_9fa077fb = arg1
}

function setTotalTokensToSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    totalTokensToSell = arg1
}

function unsoldTokens() {
    require ext_code.size(TOKENAddress)
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_acced821(?) {
    require msg.sender == owner
    if eth.balance(this.address) <= 0:
        revert with 0, 'Insufficient balance'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimToken() {
    if block.timestamp < claimStartAt:
        revert with 0, 'NOT Claim time!'
    if sub_f89e97d0[address(msg.sender)] <= 0:
        revert with 0, 'NO token Bought!'
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_f89e97d0[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_f89e97d0[address(msg.sender)] = 0
    emit tokensClaimed(sub_f89e97d0[address(msg.sender)], block.timestamp, msg.sender);
}

function sub_b2761471(?) {
    if sub_741e7901 + (24 * 3600) < sub_741e7901:
        revert with 0, 'SafeMath: addition overflow'
    if sub_741e7901 < block.timestamp:
        if block.timestamp < sub_741e7901 + (24 * 3600):
            return (10^18 * sub_027ed411)
    if sub_741e7901 + (48 * 24 * 3600) < sub_741e7901:
        revert with 0, 'SafeMath: addition overflow'
    if sub_741e7901 + (24 * 3600) < block.timestamp:
        if block.timestamp < sub_741e7901 + (48 * 24 * 3600):
            return (10^18 * sub_32a1f201)
    if sub_741e7901 + (48 * 24 * 3600) >= block.timestamp:
        return (5 * 10^18 * sub_af598c7a)
    return (10^18 * sub_af598c7a)
}

function withdrawUnsoldTokens() {
    require msg.sender == owner
    require ext_code.size(TOKENAddress)
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No remained tokens'
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function calculateTokenAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_741e7901 + (24 * 3600) < sub_741e7901:
        revert with 0, 'SafeMath: addition overflow'
    if sub_741e7901 < block.timestamp:
        if block.timestamp < sub_741e7901 + (24 * 3600):
            if not 10^18 * sub_027ed411:
                return 0
            require 10^18 * sub_027ed411
            if 10^18 * sub_027ed411 * arg1 / 10^18 * sub_027ed411 != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (10^18 * sub_027ed411 * arg1 / 10^18)
    if sub_741e7901 + (48 * 24 * 3600) < sub_741e7901:
        revert with 0, 'SafeMath: addition overflow'
    if sub_741e7901 + (24 * 3600) < block.timestamp:
        if block.timestamp < sub_741e7901 + (48 * 24 * 3600):
            if not 10^18 * sub_32a1f201:
                return 0
            require 10^18 * sub_32a1f201
            if 10^18 * sub_32a1f201 * arg1 / 10^18 * sub_32a1f201 != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (10^18 * sub_32a1f201 * arg1 / 10^18)
    if sub_741e7901 + (48 * 24 * 3600) >= block.timestamp:
        if not 5 * 10^18 * sub_af598c7a:
            return 0
        require 5 * 10^18 * sub_af598c7a
        if 5 * 10^18 * sub_af598c7a * arg1 / 5 * 10^18 * sub_af598c7a != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (5 * 10^18 * sub_af598c7a * arg1 / 10^18)
    if not 10^18 * sub_af598c7a:
        return 0
    require 10^18 * sub_af598c7a
    if 10^18 * sub_af598c7a * arg1 / 10^18 * sub_af598c7a != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (10^18 * sub_af598c7a * arg1 / 10^18)
}

function calculateBNBAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_741e7901 + (24 * 3600) < sub_741e7901:
        revert with 0, 'SafeMath: addition overflow'
    if sub_741e7901 >= block.timestamp:
        if sub_741e7901 + (48 * 24 * 3600) < sub_741e7901:
            revert with 0, 'SafeMath: addition overflow'
        if sub_741e7901 + (24 * 3600) >= block.timestamp:
            if sub_741e7901 + (48 * 24 * 3600) >= block.timestamp:
                if 5 * 10^18 * sub_af598c7a <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                44,
                                0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                mem[208 len 20]
                if not arg1:
                    if 5 * 10^18 * sub_af598c7a <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if 5 * 10^18 * sub_af598c7a:
                        return (0 / 5 * 10^18 * sub_af598c7a)
                else:
                    if arg1:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 5 * 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 5 * 10^18 * sub_af598c7a:
                            return (10^18 * arg1 / 5 * 10^18 * sub_af598c7a)
            else:
                if 10^18 * sub_af598c7a <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                44,
                                0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                mem[208 len 20]
                if not arg1:
                    if 10^18 * sub_af598c7a <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * sub_af598c7a:
                        return (0 / 10^18 * sub_af598c7a)
                else:
                    if arg1:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * sub_af598c7a:
                            return (10^18 * arg1 / 10^18 * sub_af598c7a)
        else:
            if block.timestamp < sub_741e7901 + (48 * 24 * 3600):
                if 10^18 * sub_32a1f201 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                44,
                                0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                mem[208 len 20]
                if not arg1:
                    if 10^18 * sub_32a1f201 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * sub_32a1f201:
                        return (0 / 10^18 * sub_32a1f201)
                else:
                    if arg1:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 10^18 * sub_32a1f201 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * sub_32a1f201:
                            return (10^18 * arg1 / 10^18 * sub_32a1f201)
            else:
                if sub_741e7901 + (48 * 24 * 3600) < sub_741e7901:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_741e7901 + (48 * 24 * 3600) >= block.timestamp:
                    if 5 * 10^18 * sub_af598c7a <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    44,
                                    0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                    mem[208 len 20]
                    if not arg1:
                        if 5 * 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 5 * 10^18 * sub_af598c7a:
                            return (0 / 5 * 10^18 * sub_af598c7a)
                    else:
                        if arg1:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 5 * 10^18 * sub_af598c7a <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if 5 * 10^18 * sub_af598c7a:
                                return (10^18 * arg1 / 5 * 10^18 * sub_af598c7a)
                else:
                    if 10^18 * sub_af598c7a <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    44,
                                    0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                    mem[208 len 20]
                    if not arg1:
                        if 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * sub_af598c7a:
                            return (0 / 10^18 * sub_af598c7a)
                    else:
                        if arg1:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 10^18 * sub_af598c7a <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * sub_af598c7a:
                                return (10^18 * arg1 / 10^18 * sub_af598c7a)
    else:
        if block.timestamp < sub_741e7901 + (24 * 3600):
            if 10^18 * sub_027ed411 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                            mem[208 len 20]
            if not arg1:
                if 10^18 * sub_027ed411 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * sub_027ed411:
                    return (0 / 10^18 * sub_027ed411)
            else:
                if arg1:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 10^18 * sub_027ed411 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * sub_027ed411:
                        return (10^18 * arg1 / 10^18 * sub_027ed411)
        else:
            if sub_741e7901 + (24 * 3600) < sub_741e7901:
                revert with 0, 'SafeMath: addition overflow'
            if sub_741e7901 + (48 * 24 * 3600) < sub_741e7901:
                revert with 0, 'SafeMath: addition overflow'
            if sub_741e7901 + (24 * 3600) >= block.timestamp:
                if sub_741e7901 + (48 * 24 * 3600) >= block.timestamp:
                    if 5 * 10^18 * sub_af598c7a <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    44,
                                    0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                    mem[208 len 20]
                    if not arg1:
                        if 5 * 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 5 * 10^18 * sub_af598c7a:
                            return (0 / 5 * 10^18 * sub_af598c7a)
                    else:
                        if arg1:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 5 * 10^18 * sub_af598c7a <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if 5 * 10^18 * sub_af598c7a:
                                return (10^18 * arg1 / 5 * 10^18 * sub_af598c7a)
                else:
                    if 10^18 * sub_af598c7a <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    44,
                                    0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                    mem[208 len 20]
                    if not arg1:
                        if 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * sub_af598c7a:
                            return (0 / 10^18 * sub_af598c7a)
                    else:
                        if arg1:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 10^18 * sub_af598c7a <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * sub_af598c7a:
                                return (10^18 * arg1 / 10^18 * sub_af598c7a)
            else:
                if block.timestamp < sub_741e7901 + (48 * 24 * 3600):
                    if 10^18 * sub_32a1f201 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    44,
                                    0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                    mem[208 len 20]
                    if not arg1:
                        if 10^18 * sub_32a1f201 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * sub_32a1f201:
                            return (0 / 10^18 * sub_32a1f201)
                    else:
                        if arg1:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 10^18 * sub_32a1f201 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * sub_32a1f201:
                                return (10^18 * arg1 / 10^18 * sub_32a1f201)
                else:
                    if sub_741e7901 + (48 * 24 * 3600) < sub_741e7901:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_741e7901 + (48 * 24 * 3600) >= block.timestamp:
                        if 5 * 10^18 * sub_af598c7a <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        44,
                                        0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                        mem[208 len 20]
                        if not arg1:
                            if 5 * 10^18 * sub_af598c7a <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if 5 * 10^18 * sub_af598c7a:
                                return (0 / 5 * 10^18 * sub_af598c7a)
                        else:
                            if arg1:
                                if 10^18 * arg1 / arg1 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * 10^18 * sub_af598c7a <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if 5 * 10^18 * sub_af598c7a:
                                    return (10^18 * arg1 / 5 * 10^18 * sub_af598c7a)
                    else:
                        if 10^18 * sub_af598c7a <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        44,
                                        0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                        mem[208 len 20]
                        if not arg1:
                            if 10^18 * sub_af598c7a <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * sub_af598c7a:
                                return (0 / 10^18 * sub_af598c7a)
                        else:
                            if arg1:
                                if 10^18 * arg1 / arg1 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 10^18 * sub_af598c7a <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if 10^18 * sub_af598c7a:
                                    return (10^18 * arg1 / 10^18 * sub_af598c7a)
    revert
}

function buyWithBNB(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_741e7901:
        revert with 0, 'Not Presale time!'
    if block.timestamp >= sub_be8ec831:
        revert with 0, 'Not Presale time!'
    if saleEnded:
        revert with 0, 'Sale disabled'
    if arg1 <= 0:
        revert with 0, 'Insufficient buy amount'
    require ext_code.size(TOKENAddress)
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Insufficient buy amount'
    if sub_741e7901 + (24 * 3600) < sub_741e7901:
        revert with 0, 'SafeMath: addition overflow'
    if sub_741e7901 >= block.timestamp:
        if sub_741e7901 + (48 * 24 * 3600) < sub_741e7901:
            revert with 0, 'SafeMath: addition overflow'
        if sub_741e7901 + (24 * 3600) >= block.timestamp:
            if sub_741e7901 + (48 * 24 * 3600) >= block.timestamp:
                if 5 * 10^18 * sub_af598c7a <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                44,
                                0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                mem[208 len 20]
                if not arg1:
                    if 5 * 10^18 * sub_af598c7a <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 5 * 10^18 * sub_af598c7a
                    if msg.value < 0 / 5 * 10^18 * sub_af598c7a:
                        revert with 0, 'Insufficient BNB balance'
                    if arg1 < sub_9fa077fb:
                        revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                    if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                        revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                    sub_f89e97d0[address(msg.sender)] += arg1
                    if totalSold + arg1 < totalSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSold += arg1
                    emit tokensBought(0 / 5 * 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                else:
                    require arg1
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 5 * 10^18 * sub_af598c7a <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 5 * 10^18 * sub_af598c7a
                    if msg.value < 10^18 * arg1 / 5 * 10^18 * sub_af598c7a:
                        revert with 0, 'Insufficient BNB balance'
                    if arg1 < sub_9fa077fb:
                        revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                    if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                        revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                    sub_f89e97d0[address(msg.sender)] += arg1
                    if totalSold + arg1 < totalSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSold += arg1
                    emit tokensBought(10^18 * arg1 / 5 * 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
            else:
                if 10^18 * sub_af598c7a <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                44,
                                0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                mem[208 len 20]
                if not arg1:
                    if 10^18 * sub_af598c7a <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^18 * sub_af598c7a
                    if msg.value < 0 / 10^18 * sub_af598c7a:
                        revert with 0, 'Insufficient BNB balance'
                    if arg1 < sub_9fa077fb:
                        revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                    if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                        revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                    sub_f89e97d0[address(msg.sender)] += arg1
                    if totalSold + arg1 < totalSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSold += arg1
                    emit tokensBought(0 / 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                else:
                    require arg1
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 10^18 * sub_af598c7a <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^18 * sub_af598c7a
                    if msg.value < 10^18 * arg1 / 10^18 * sub_af598c7a:
                        revert with 0, 'Insufficient BNB balance'
                    if arg1 < sub_9fa077fb:
                        revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                    if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                        revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                    sub_f89e97d0[address(msg.sender)] += arg1
                    if totalSold + arg1 < totalSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSold += arg1
                    emit tokensBought(10^18 * arg1 / 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
        else:
            if block.timestamp < sub_741e7901 + (48 * 24 * 3600):
                if 10^18 * sub_32a1f201 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                44,
                                0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                mem[208 len 20]
                if not arg1:
                    if 10^18 * sub_32a1f201 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^18 * sub_32a1f201
                    if msg.value < 0 / 10^18 * sub_32a1f201:
                        revert with 0, 'Insufficient BNB balance'
                    if arg1 < sub_9fa077fb:
                        revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                    if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                        revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                    sub_f89e97d0[address(msg.sender)] += arg1
                    if totalSold + arg1 < totalSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSold += arg1
                    emit tokensBought(0 / 10^18 * sub_32a1f201, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                else:
                    require arg1
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 10^18 * sub_32a1f201 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^18 * sub_32a1f201
                    if msg.value < 10^18 * arg1 / 10^18 * sub_32a1f201:
                        revert with 0, 'Insufficient BNB balance'
                    if arg1 < sub_9fa077fb:
                        revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                    if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                        revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                    sub_f89e97d0[address(msg.sender)] += arg1
                    if totalSold + arg1 < totalSold:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSold += arg1
                    emit tokensBought(10^18 * arg1 / 10^18 * sub_32a1f201, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
            else:
                if sub_741e7901 + (48 * 24 * 3600) < sub_741e7901:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_741e7901 + (48 * 24 * 3600) >= block.timestamp:
                    if 5 * 10^18 * sub_af598c7a <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    44,
                                    0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                    mem[208 len 20]
                    if not arg1:
                        if 5 * 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 5 * 10^18 * sub_af598c7a
                        if msg.value < 0 / 5 * 10^18 * sub_af598c7a:
                            revert with 0, 'Insufficient BNB balance'
                        if arg1 < sub_9fa077fb:
                            revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                        if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                            revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                        sub_f89e97d0[address(msg.sender)] += arg1
                        if totalSold + arg1 < totalSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSold += arg1
                        emit tokensBought(0 / 5 * 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                    else:
                        require arg1
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 5 * 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 5 * 10^18 * sub_af598c7a
                        if msg.value < 10^18 * arg1 / 5 * 10^18 * sub_af598c7a:
                            revert with 0, 'Insufficient BNB balance'
                        if arg1 < sub_9fa077fb:
                            revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                        if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                            revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                        sub_f89e97d0[address(msg.sender)] += arg1
                        if totalSold + arg1 < totalSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSold += arg1
                        emit tokensBought(10^18 * arg1 / 5 * 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                else:
                    if 10^18 * sub_af598c7a <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    44,
                                    0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                    mem[208 len 20]
                    if not arg1:
                        if 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 10^18 * sub_af598c7a
                        if msg.value < 0 / 10^18 * sub_af598c7a:
                            revert with 0, 'Insufficient BNB balance'
                        if arg1 < sub_9fa077fb:
                            revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                        if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                            revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                        sub_f89e97d0[address(msg.sender)] += arg1
                        if totalSold + arg1 < totalSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSold += arg1
                        emit tokensBought(0 / 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                    else:
                        require arg1
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 10^18 * sub_af598c7a
                        if msg.value < 10^18 * arg1 / 10^18 * sub_af598c7a:
                            revert with 0, 'Insufficient BNB balance'
                        if arg1 < sub_9fa077fb:
                            revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                        if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                            revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                        sub_f89e97d0[address(msg.sender)] += arg1
                        if totalSold + arg1 < totalSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSold += arg1
                        emit tokensBought(10^18 * arg1 / 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
    else:
        if block.timestamp < sub_741e7901 + (24 * 3600):
            if 10^18 * sub_027ed411 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                            mem[208 len 20]
            if not arg1:
                if 10^18 * sub_027ed411 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^18 * sub_027ed411
                if msg.value < 0 / 10^18 * sub_027ed411:
                    revert with 0, 'Insufficient BNB balance'
                if arg1 < sub_9fa077fb:
                    revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                    revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                sub_f89e97d0[address(msg.sender)] += arg1
                if totalSold + arg1 < totalSold:
                    revert with 0, 'SafeMath: addition overflow'
                totalSold += arg1
                emit tokensBought(0 / 10^18 * sub_027ed411, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
            else:
                require arg1
                if 10^18 * arg1 / arg1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 10^18 * sub_027ed411 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^18 * sub_027ed411
                if msg.value < 10^18 * arg1 / 10^18 * sub_027ed411:
                    revert with 0, 'Insufficient BNB balance'
                if arg1 < sub_9fa077fb:
                    revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                    revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                sub_f89e97d0[address(msg.sender)] += arg1
                if totalSold + arg1 < totalSold:
                    revert with 0, 'SafeMath: addition overflow'
                totalSold += arg1
                emit tokensBought(10^18 * arg1 / 10^18 * sub_027ed411, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
        else:
            if sub_741e7901 + (24 * 3600) < sub_741e7901:
                revert with 0, 'SafeMath: addition overflow'
            if sub_741e7901 + (48 * 24 * 3600) < sub_741e7901:
                revert with 0, 'SafeMath: addition overflow'
            if sub_741e7901 + (24 * 3600) >= block.timestamp:
                if sub_741e7901 + (48 * 24 * 3600) >= block.timestamp:
                    if 5 * 10^18 * sub_af598c7a <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    44,
                                    0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                    mem[208 len 20]
                    if not arg1:
                        if 5 * 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 5 * 10^18 * sub_af598c7a
                        if msg.value < 0 / 5 * 10^18 * sub_af598c7a:
                            revert with 0, 'Insufficient BNB balance'
                        if arg1 < sub_9fa077fb:
                            revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                        if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                            revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                        sub_f89e97d0[address(msg.sender)] += arg1
                        if totalSold + arg1 < totalSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSold += arg1
                        emit tokensBought(0 / 5 * 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                    else:
                        require arg1
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 5 * 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 5 * 10^18 * sub_af598c7a
                        if msg.value < 10^18 * arg1 / 5 * 10^18 * sub_af598c7a:
                            revert with 0, 'Insufficient BNB balance'
                        if arg1 < sub_9fa077fb:
                            revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                        if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                            revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                        sub_f89e97d0[address(msg.sender)] += arg1
                        if totalSold + arg1 < totalSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSold += arg1
                        emit tokensBought(10^18 * arg1 / 5 * 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                else:
                    if 10^18 * sub_af598c7a <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    44,
                                    0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                    mem[208 len 20]
                    if not arg1:
                        if 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 10^18 * sub_af598c7a
                        if msg.value < 0 / 10^18 * sub_af598c7a:
                            revert with 0, 'Insufficient BNB balance'
                        if arg1 < sub_9fa077fb:
                            revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                        if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                            revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                        sub_f89e97d0[address(msg.sender)] += arg1
                        if totalSold + arg1 < totalSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSold += arg1
                        emit tokensBought(0 / 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                    else:
                        require arg1
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 10^18 * sub_af598c7a <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 10^18 * sub_af598c7a
                        if msg.value < 10^18 * arg1 / 10^18 * sub_af598c7a:
                            revert with 0, 'Insufficient BNB balance'
                        if arg1 < sub_9fa077fb:
                            revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                        if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                            revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                        sub_f89e97d0[address(msg.sender)] += arg1
                        if totalSold + arg1 < totalSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSold += arg1
                        emit tokensBought(10^18 * arg1 / 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
            else:
                if block.timestamp < sub_741e7901 + (48 * 24 * 3600):
                    if 10^18 * sub_32a1f201 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    44,
                                    0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                    mem[208 len 20]
                    if not arg1:
                        if 10^18 * sub_32a1f201 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 10^18 * sub_32a1f201
                        if msg.value < 0 / 10^18 * sub_32a1f201:
                            revert with 0, 'Insufficient BNB balance'
                        if arg1 < sub_9fa077fb:
                            revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                        if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                            revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                        sub_f89e97d0[address(msg.sender)] += arg1
                        if totalSold + arg1 < totalSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSold += arg1
                        emit tokensBought(0 / 10^18 * sub_32a1f201, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                    else:
                        require arg1
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 10^18 * sub_32a1f201 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 10^18 * sub_32a1f201
                        if msg.value < 10^18 * arg1 / 10^18 * sub_32a1f201:
                            revert with 0, 'Insufficient BNB balance'
                        if arg1 < sub_9fa077fb:
                            revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                        if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                            revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                        sub_f89e97d0[address(msg.sender)] += arg1
                        if totalSold + arg1 < totalSold:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSold += arg1
                        emit tokensBought(10^18 * arg1 / 10^18 * sub_32a1f201, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                else:
                    if sub_741e7901 + (48 * 24 * 3600) < sub_741e7901:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_741e7901 + (48 * 24 * 3600) >= block.timestamp:
                        if 5 * 10^18 * sub_af598c7a <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        44,
                                        0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                        mem[208 len 20]
                        if not arg1:
                            if 5 * 10^18 * sub_af598c7a <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 5 * 10^18 * sub_af598c7a
                            if msg.value < 0 / 5 * 10^18 * sub_af598c7a:
                                revert with 0, 'Insufficient BNB balance'
                            if arg1 < sub_9fa077fb:
                                revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                            if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                                revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                            sub_f89e97d0[address(msg.sender)] += arg1
                            if totalSold + arg1 < totalSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSold += arg1
                            emit tokensBought(0 / 5 * 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                        else:
                            require arg1
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 5 * 10^18 * sub_af598c7a <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 5 * 10^18 * sub_af598c7a
                            if msg.value < 10^18 * arg1 / 5 * 10^18 * sub_af598c7a:
                                revert with 0, 'Insufficient BNB balance'
                            if arg1 < sub_9fa077fb:
                                revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                            if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                                revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                            sub_f89e97d0[address(msg.sender)] += arg1
                            if totalSold + arg1 < totalSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSold += arg1
                            emit tokensBought(10^18 * arg1 / 5 * 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                    else:
                        if 10^18 * sub_af598c7a <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        44,
                                        0xfe544f4b454e2070726963652070657220424e422073686f756c642062652067726561746572207468616e20,
                                        mem[208 len 20]
                        if not arg1:
                            if 10^18 * sub_af598c7a <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 10^18 * sub_af598c7a
                            if msg.value < 0 / 10^18 * sub_af598c7a:
                                revert with 0, 'Insufficient BNB balance'
                            if arg1 < sub_9fa077fb:
                                revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                            if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                                revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                            sub_f89e97d0[address(msg.sender)] += arg1
                            if totalSold + arg1 < totalSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSold += arg1
                            emit tokensBought(0 / 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
                        else:
                            require arg1
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 10^18 * sub_af598c7a <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 10^18 * sub_af598c7a
                            if msg.value < 10^18 * arg1 / 10^18 * sub_af598c7a:
                                revert with 0, 'Insufficient BNB balance'
                            if arg1 < sub_9fa077fb:
                                revert with 0, 32, 41, 0x774c6f776572207468616e20746865206d696e696d616c207472616e73616374696f6e20616d6f756e, mem[269 len 23]
                            if sub_f89e97d0[address(msg.sender)] + arg1 < sub_f89e97d0[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_f89e97d0[address(msg.sender)] + arg1 > maxPerUser:
                                revert with 0, 32, 39, 0x7447726561746572207468616e20746865206d6178696d756d207075726368617365206c696d69, mem[267 len 25]
                            sub_f89e97d0[address(msg.sender)] += arg1
                            if totalSold + arg1 < totalSold:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSold += arg1
                            emit tokensBought(10^18 * arg1 / 10^18 * sub_af598c7a, arg1, Array(len=3, data='BNB'), block.timestamp, msg.sender);
}



}
