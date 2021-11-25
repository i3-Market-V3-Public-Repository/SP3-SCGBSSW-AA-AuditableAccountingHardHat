module.exports = async ({
  getNamedAccounts,
  deployments,
  getChainId,
  getUnnamedAccounts,
}) => {
  const { deploy } = deployments;
  const [deployer] = await getUnnamedAccounts();
  await deploy("AuditableAccounting", {
    from: deployer,
    gasLimit: 12500000,
    args: [],
    chainId: 1337,
    log: true,
  });
};
