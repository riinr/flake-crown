{
  description = ''Get information about colors and convert them in the command line'';
  inputs.src-clr-master.flake = false;
  inputs.src-clr-master.type = "github";
  inputs.src-clr-master.owner = "Calinou";
  inputs.src-clr-master.repo = "clr";
  inputs.src-clr-master.ref = "refs/heads/master";
  
  
  inputs."chroma".url = "path:../../../c/chroma";
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-clr-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-clr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}