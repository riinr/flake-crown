{
  description = ''NWSync Repository Management utilities'';
  inputs.src-nwsync-0_2_1.flake = false;
  inputs.src-nwsync-0_2_1.type = "github";
  inputs.src-nwsync-0_2_1.owner = "Beamdog";
  inputs.src-nwsync-0_2_1.repo = "nwsync";
  inputs.src-nwsync-0_2_1.ref = "refs/tags/0.2.1";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  outputs = { self, nixpkgs, src-nwsync-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwsync-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}