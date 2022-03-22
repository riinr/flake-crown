{
  description = ''Http request form parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpform-master.flake = false;
  inputs.src-httpform-master.ref   = "refs/heads/master";
  inputs.src-httpform-master.owner = "tulayang";
  inputs.src-httpform-master.repo  = "httpform";
  inputs.src-httpform-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpform-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-httpform-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}