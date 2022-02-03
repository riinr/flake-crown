{
  description = ''Checks if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses.'';
  inputs.src-validateip-0_1_0.flake = false;
  inputs.src-validateip-0_1_0.type = "github";
  inputs.src-validateip-0_1_0.owner = "theAkito";
  inputs.src-validateip-0_1_0.repo = "nim-validateip";
  inputs.src-validateip-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-validateip-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-validateip-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-validateip-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}