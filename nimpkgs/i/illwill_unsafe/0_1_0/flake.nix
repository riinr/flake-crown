{
  description = ''A fork of John Novak (john@johnnovak.net)'s illwill package that is less safe numbers wise'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-illwill_unsafe-0_1_0.flake = false;
  inputs.src-illwill_unsafe-0_1_0.owner = "matthewjcavalier";
  inputs.src-illwill_unsafe-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-illwill_unsafe-0_1_0.repo  = "illwill_unsafe";
  inputs.src-illwill_unsafe-0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-illwill_unsafe-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-illwill_unsafe-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}