contract main {




// =====================  Runtime code  =====================


const FEE_PROVIDER_REVISION = 1


uint256 stor0;
uint8 stor1;
uint256 loanOriginationFeePercentage;

function originationFeePercentage() payable {
    return loanOriginationFeePercentage
}

function getLoanOriginationFeePercentage() payable {
    return loanOriginationFeePercentage
}

function _fallback() payable {
    revert
}

function calculateLoanOriginationFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        return 0
    if loanOriginationFeePercentage * arg2 / arg2 != loanOriginationFeePercentage:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (loanOriginationFeePercentage * arg2) + 5 * 10^17 < 5 * 10^17:
        revert with 0, 'SafeMath: addition overflow'
    return ((loanOriginationFeePercentage * arg2) + 5 * 10^17 / 10^18)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1:
        loanOriginationFeePercentage = 25 * 10^14
    else:
        if ext_code.size(this.address):
            if 1 <= stor0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if stor1:
            loanOriginationFeePercentage = 25 * 10^14
        else:
            stor1 = 1
            stor0 = 1
            loanOriginationFeePercentage = 25 * 10^14
            stor1 = 0
}



}
