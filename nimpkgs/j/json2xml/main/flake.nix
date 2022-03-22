{
  description = ''convert json to xml  : JsonNode( comapatible with  module json ) To  XmlNode (comapatible with  module  xmltree)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-json2xml-main.flake = false;
  inputs.src-json2xml-main.owner = "MhedhebiIssam";
  inputs.src-json2xml-main.ref   = "main";
  inputs.src-json2xml-main.repo  = "json2xml";
  inputs.src-json2xml-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-json2xml-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-json2xml-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}