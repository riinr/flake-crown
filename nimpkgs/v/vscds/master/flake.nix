{
  description = ''<VS Code Data Swapper> Easily swap between multiple data folders.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vscds-master.flake = false;
  inputs.src-vscds-master.owner = "doongjohn";
  inputs.src-vscds-master.ref   = "refs/heads/master";
  inputs.src-vscds-master.repo  = "vscds";
  inputs.src-vscds-master.type  = "github";
  
  inputs."nimlevenshtein".dir   = "nimpkgs/n/nimlevenshtein";
  inputs."nimlevenshtein".owner = "riinr";
  inputs."nimlevenshtein".ref   = "flake-pinning";
  inputs."nimlevenshtein".repo  = "flake-nimble";
  inputs."nimlevenshtein".type  = "github";
  inputs."nimlevenshtein".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlevenshtein".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vscds-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vscds-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}