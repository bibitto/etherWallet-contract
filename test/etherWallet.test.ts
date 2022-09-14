/* eslint-disable */
import '@nomiclabs/hardhat-ethers';
import { ethers } from 'hardhat';

describe('EtherWallet', function () {
  it('Deploy Contract on the hardhat netword', async function () {
    const EtherWallet = await ethers.getContractFactory('EtherWallet');
    const walletContract = await EtherWallet.deploy();
    await walletContract.deployed();
  });
});
