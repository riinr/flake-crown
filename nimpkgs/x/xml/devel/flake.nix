{
  description = ''Pure Nim XML parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xml-devel.flake = false;
  inputs.src-xml-devel.owner = "ba0f3";
  inputs.src-xml-devel.ref   = "refs/tags/devel";
  inputs.src-xml-devel.repo  = "xml.nim";
  inputs.src-xml-devel.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xml-devel"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xml-devel";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}