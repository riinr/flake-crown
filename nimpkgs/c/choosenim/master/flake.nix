{
  description = ''The Nim toolchain installer.'';
  inputs.src-choosenim-master.flake = false;
  inputs.src-choosenim-master.type = "github";
  inputs.src-choosenim-master.owner = "dom96";
  inputs.src-choosenim-master.repo = "choosenim";
  inputs.src-choosenim-master.ref = "refs/heads/master";
  
  
  inputs."nimble".url = "path:../../../n/nimble";
  inputs."nimble".type = "github";
  inputs."nimble".owner = "riinr";
  inputs."nimble".repo = "flake-nimble";
  inputs."nimble".ref = "flake-pinning";
  inputs."nimble".dir = "nimpkgs/n/nimble";

  
  inputs."analytics".url = "path:../../../a/analytics";
  inputs."analytics".type = "github";
  inputs."analytics".owner = "riinr";
  inputs."analytics".repo = "flake-nimble";
  inputs."analytics".ref = "flake-pinning";
  inputs."analytics".dir = "nimpkgs/a/analytics";

  
  inputs."osinfo".url = "path:../../../o/osinfo";
  inputs."osinfo".type = "github";
  inputs."osinfo".owner = "riinr";
  inputs."osinfo".repo = "flake-nimble";
  inputs."osinfo".ref = "flake-pinning";
  inputs."osinfo".dir = "nimpkgs/o/osinfo";

  
  inputs."zippy".url = "path:../../../z/zippy";
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  outputs = { self, nixpkgs, src-choosenim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-choosenim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}