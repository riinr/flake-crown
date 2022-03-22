{
  description = ''Bindings for miniaudio'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-parasound-master.flake = false;
  inputs.src-parasound-master.ref   = "refs/heads/master";
  inputs.src-parasound-master.owner = "paranim";
  inputs.src-parasound-master.repo  = "parasound";
  inputs.src-parasound-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-parasound-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-parasound-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}