{
  description = ''NWSync Repository Management utilities'';
  inputs.src-nwsync-0_4_0.flake = false;
  inputs.src-nwsync-0_4_0.type = "github";
  inputs.src-nwsync-0_4_0.owner = "Beamdog";
  inputs.src-nwsync-0_4_0.repo = "nwsync";
  inputs.src-nwsync-0_4_0.ref = "refs/tags/0.4.0";
  
  
  inputs."neverwinter".url = "path:../../../n/neverwinter";
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  outputs = { self, nixpkgs, src-nwsync-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwsync-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwsync-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}