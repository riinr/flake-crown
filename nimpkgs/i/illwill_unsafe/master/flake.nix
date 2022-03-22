{
  description = ''A fork of John Novak (john@johnnovak.net)'s illwill package that is less safe numbers wise'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-illwill_unsafe-master.flake = false;
  inputs.src-illwill_unsafe-master.ref   = "refs/heads/master";
  inputs.src-illwill_unsafe-master.owner = "matthewjcavalier";
  inputs.src-illwill_unsafe-master.repo  = "illwill_unsafe";
  inputs.src-illwill_unsafe-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-illwill_unsafe-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-illwill_unsafe-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}